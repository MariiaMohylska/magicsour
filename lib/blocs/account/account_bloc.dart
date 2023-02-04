import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:magicsour/blocs/favorites/favorite_mediator.dart';
import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/models/profile/profile_model.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/repositories/account/account_repository.dart';
import 'package:magicsour/repositories/recipe/recipe_repository.dart';

part 'account_event.dart';

part 'account_state.dart';

part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AccountRepository _accountRepository;
  final FirebaseAuth _firebaseAuth;
  final FavoriteMediator _favoriteMediator;
  final RecipeRepository _recipesRepository;

  AccountBloc(
      {required AccountRepository accountRepository,
      required FavoriteMediator favoriteMediator,
      required RecipeRepository recipeRepository,})
      : _accountRepository = accountRepository,
        _firebaseAuth = FirebaseAuth.instance,
        _favoriteMediator = favoriteMediator,
        _recipesRepository = recipeRepository,
        super(const AccountState.init()) {
    on<_AccountLogInEvent>(_loggedIn);
    on<_AccountLogOutEvent>(_loggedOut);
    on<_AccountUpdateStatusToLoggedIn>(_changeToLoggedIn);
    on<_AccountUpdateStatusToLoggedOut>(_changeToLoggedOut);
    on<_AccountUpdateRestrictedProductsEvent>(_updateRestrictedProducts);
    on<_AccountUpdateAllergensEvent>(_updateAllergens);

    _checkAuthStatus();

    _favoriteMediator.linearPlaybackItem.listen((value) {
      if (_accountRepository.profile != null) {
        _accountRepository.profile!.favorites = value;
        _accountRepository.updateCurrentUser();
      }
    });
  }

  void _checkAuthStatus() {
    //TODO: Loading from cache
    if (_accountRepository.profile != null) {
      add(const AccountEvent.updateStatusToLoggedIn());
    } else {
      add(const AccountEvent.updateStatusToLoggedOut());
    }
  }

  void _loggedIn(_AccountLogInEvent event, Emitter<AccountState> emit) async {
    if (_accountRepository.profile == null) {
      _googleSignIn();

      final user = _firebaseAuth.currentUser;
      ProfileModel? profileModel;

      if (user != null) {
        profileModel = await _accountRepository.getUserById(user.uid) ??
            _createNewProfile(user);
      }

      _accountRepository.updateProfile(profileModel);
    }

    if (_accountRepository.profile != null) {
      _favoriteMediator
          .updateFavoritesList(_accountRepository.profile!.favorites);

      emit(AccountState.loggedIn(
          profile: _accountRepository.profile!,
          restrictedProducts: _getRestrictedProductsMap(),
          allergensList: _getAllergensList()));
    } else {
      add(const AccountEvent.logOut());
    }
  }

  List<SelectableModel<Allergens>> _getAllergensList() =>
      Allergens.values.map((allergens) {
        bool isSelected = false;
        if (_accountRepository.profile != null) {
          isSelected =
              _accountRepository.profile!.allergens.contains(allergens);
        }

        return allergens.selectableModel(isSelected);
      }).toList();

  Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      _getRestrictedProductsMap() {
    final Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
        restrictedProductsMap = {};

    for (var type in ProductType.values) {
      List<SelectableModel<Ingredient>> ingredientsList = _recipesRepository
          .ingredientList
          .where((ingredient) => ingredient.type == type)
          .map((ingredient) {
        bool isSelected = false;
        if (_accountRepository.profile != null) {
          isSelected = _accountRepository.profile!.restrictedProducts
              .contains(ingredient);
        }

        return ingredient.selectableModel(isSelected);
      }).toList();

      if (ingredientsList.isNotEmpty) {
        restrictedProductsMap
            .addAll({type.selectableModel(false): ingredientsList});
      }
    }

    return restrictedProductsMap;
  }

  ProfileModel _createNewProfile(User user) {
    final profile = ProfileModel(
        name: user.displayName ?? '',
        uid: user.uid,
        allergens: [],
        restrictedProducts: [],
        favorites: []);

    _accountRepository.addUser(profile);

    return profile;
  }

  void _googleSignIn() async {
    final googleUser = await GoogleSignIn().signIn();

    final googleAuth = await googleUser?.authentication;

    if (googleAuth != null) {
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential);
    }
  }

  void _loggedOut(_AccountLogOutEvent event, Emitter<AccountState> emit) {
    _accountRepository.updateProfile(null);

    emit(const AccountState.loggedOut());
  }

  void _changeToLoggedIn(
      _AccountUpdateStatusToLoggedIn event, Emitter<AccountState> emit) {
    emit(AccountState.loggedIn(
        profile: _accountRepository.profile!,
        restrictedProducts: _getRestrictedProductsMap(),
        allergensList: _getAllergensList()));
  }

  void _changeToLoggedOut(
      _AccountUpdateStatusToLoggedOut event, Emitter<AccountState> emit) {
    emit(const AccountState.loggedOut());
  }

  void _updateRestrictedProducts(
      _AccountUpdateRestrictedProductsEvent event, Emitter<AccountState> emit) {
    final List<Ingredient> restrictedProducts =
        _getRestrictedProductFromMap(event.restrictedProducts);

    if (state is AccountLoggedInState) {
      _accountRepository.profile!.restrictedProducts = restrictedProducts;
      _accountRepository.updateCurrentUser();

      final loggedInState = state as AccountLoggedInState;
      emit(loggedInState.copyWith(
        restrictedProducts: _getRestrictedProductsMap(),
      ));
    } else {
      emit(state);
    }
  }

  void _updateAllergens(
      _AccountUpdateAllergensEvent event, Emitter<AccountState> emit) {
    final List<Allergens> allergens = event.allergensList.getSelectedList;

    if (state is AccountLoggedInState) {
      _accountRepository.profile!.allergens = allergens;
      _accountRepository.updateCurrentUser();

      final loggedInState = state as AccountLoggedInState;
      emit(loggedInState.copyWith(
        allergensList: event.allergensList,
      ));
    } else {
      emit(state);
    }
  }

  List<Ingredient> _getRestrictedProductFromMap(
      Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
          restrictedProductMap) {
    final List<Ingredient> ingredientList = [];

    restrictedProductMap.forEach((key, value) {
      ingredientList.addAll(value.getSelectedList);
    });

    return ingredientList;
  }
}
