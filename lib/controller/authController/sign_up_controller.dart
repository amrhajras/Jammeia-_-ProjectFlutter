import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_route.dart';
import '../../core/functions/show_awesome_dialog.dart';
import '../../core/functions/show_dialog.dart';
import '../../data/model/user_model.dart';

abstract class SignUpController extends GetxController {
  signUp(BuildContext context);
  signIn();
  Future<void> addUser({required UserModel userModel});
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController password;
  late TextEditingController email;
  late TextEditingController confirmPassword;

  @override
  signUp(BuildContext context) async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      try {
        showUpload(context: context);
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        )
            .then((value) {
          addUser(
              userModel: UserModel(
                  phone: '0592757091',
                  name: username.text,
                  email: email.text,
                  password: password.text,
                  image:
                      'https://firebasestorage.googleapis.com/v0/b/jameia-5c2cf.appspot.com/o/funky.png?alt=media&token=a3353ee0-add7-4ace-9d5f-6880c09a4530',
                  idNumber: '096738762',
                  uid: value.user!.uid,
                  isAdmin: false));
        }).catchError((e) {
          print('error');
        });

        Get.offAllNamed(AppRoute.successSignUp);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          showAwesomeDialog(
              context: context,
              title: 'weak-password',
              desc: 'The password provided is too weak.');
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          showAwesomeDialog(
              context: context,
              title: 'email-already-in-use',
              desc: 'The account already exists for that email.');
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    } else
      print('not valid');
  }

  @override
  signIn() {
    Get.offAllNamed(AppRoute.signIn);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  Future<void> addUser({required UserModel userModel}) async {
    await FirebaseFirestore.instance
        .collection('user')
        .doc(userModel.uid)
        .set(userModel.toMap())
        .then((value) {
      print('add success');
    }).catchError((onError) {
      print('add fail');
    });
  }
}
