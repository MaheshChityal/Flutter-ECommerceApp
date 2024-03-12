import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Variables
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // SignUP
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.animalIcon);

      // Check Internet Connectivity

      // Form Validation

      // Privacy Policy Check

      // Register user in the firebase Authentication & Save user data in the Firebase

      // Save Authentication user data in the Firebase Firestore

      //Show Success Message

      // Move to verify Email Screen
    } catch (e) {
    } finally {}
  }
}
