import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  // final _auth = FirebaseAuth.instance;

  // Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //Function to Show Relevent Screen
  screenRedirect() async {
    //Local Storage
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }


  //[EmailAuth] -SignIn

  //[EmailAuth] = Register
  // Future<UserCredential> registerWithEmailAndPassword(String email,String password) async{
  //   try {
  //     return await _auth.createUserWithEmailAndPassword(email:email,password:password);
  //   } catch (e) {
      
  //   }
  // }


  //[reAuth] - reAuth user

  // [EmailAuth] - Forget Pass



  //[googleAuth] - Google

  //[FacebookAuth] - Facebook



  //[LoginUser] - Vaid for any auth

  //[DeleteUser] - remove user Auth and firebase account.

}
