import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/AccountsScreen/profile_screen/data/profile_modal.dart';

class ProfileRepository {
  ProfileRepository() {
    getProfileData();
  }
  ProfileModal getProfileData() {
    // try {
      debugPrint('=========repository${ProfileModal.dummy().email.toString()}');
      return ProfileModal.dummy();

    // } catch (e) {
    //   debugPrint('==============${e.toString()}');
    //   return null;
    // }
  }
}
