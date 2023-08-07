import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../core/constant/app_route.dart';
import '../../core/functions/show_awesome_dialog.dart';
import '../../core/functions/show_dialog.dart';
import '../../core/service/my_service.dart';

abstract class SignInController extends GetxController {
  signUp();
  signIn(context);
}

class SignInControllerImp extends SignInController {
  late TextEditingController email;
  late TextEditingController password;
  MyService myService = Get.find();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  signUp() {
    Get.offAllNamed(AppRoute.signUp);
  }

  @override
  signIn(context) async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      try {
        showUpload(context: context);
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: email.text, password: password.text);
        Get.offAllNamed(AppRoute.homePage);
        myService.sharedPreferences.setBool('isLogin', true);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          showAwesomeDialog(
              context: context,
              title: 'user-not-found',
              desc: 'No user found for that email.');
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          showAwesomeDialog(
              context: context,
              title: 'wrong-password',
              desc: 'Wrong password provided for that user.');
          print('Wrong password provided for that user.');
        }
      }
    } else
      print('not valid');
  }

  @override
  void onInit() async {
    print('mmmmmmmmmmmmmmmmmmmmmmmmmmm');
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
