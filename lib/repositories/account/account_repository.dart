import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:magicsour/models/profile/profile_model.dart';
import 'package:magicsour/repositories/recipe/recipe_repository.dart';

class AccountRepository {
  ProfileModel? _profile;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final RecipeRepository _recipeRepository;

  final StreamController<ProfileModel?> _profileStream = StreamController.broadcast();

  Stream<ProfileModel?> get profileStream => _profileStream.stream;

  AccountRepository({required RecipeRepository homeRepository})
      : _recipeRepository = homeRepository;

  ProfileModel? get profile => _profile;

  void updateProfile(ProfileModel? newProfile) {
    _profile = newProfile;
    _profileStream.add(newProfile);
  }

  Future<ProfileModel?> getUserById(String id) async {
    final doc = await _firebaseFirestore.collection('users').doc(id).get();
    return doc.data() != null
        ? ProfileModel.fromJson(doc.data()!, _recipeRepository.ingredientList)
        : null;
  }

  void updateCurrentUser() async => await _firebaseFirestore
      .collection('users')
      .doc(_profile!.uid)
      .update(_profile!.toJson());

  void addUser(ProfileModel data) async => await _firebaseFirestore
      .collection('users')
      .doc(data.uid)
      .set(data.toJson());

  bool get isLoggedIn => profile != null;
}
