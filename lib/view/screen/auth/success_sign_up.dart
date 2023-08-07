import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/authController/success_sign_up_controller.dart';
import '../../widget/authWidget/custom_button_auth.dart';
import '../../widget/authWidget/custom_title_auth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp signUpControllerImp =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const CustomTitleAuth(textTitleAuth: "Success Sign Up"),
                const SizedBox(
                  height: 30,
                ),
                const Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Congratulation",
                  style: TextStyle(fontSize: 40),
                ),
                const Text(
                  "Successfully Registered",
                  style: TextStyle(fontSize: 23, color: Colors.black38),
                ),
                const SizedBox(
                  height: 290,
                ),
                CustomButtonAuth(
                    text: "Go To Sign In",
                    width: double.infinity,
                    height: 50,
                    onTap: () {
                      signUpControllerImp.goToSignIn();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
