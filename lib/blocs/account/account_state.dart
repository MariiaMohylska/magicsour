part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.init() = AccountInitialState;

  const factory AccountState.loggedIn({
    required ProfileModel profile,
    required List<SelectableModel<Allergens>> allergensList,
    required Map<SelectableModel<ProductType>,
            List<SelectableModel<Ingredient>>>
        restrictedProducts,
  }) = AccountLoggedInState;

  const factory AccountState.loggedOut() = AccountLoggedOutState;
}
