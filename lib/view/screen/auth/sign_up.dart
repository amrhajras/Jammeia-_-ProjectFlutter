import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/authController/sign_up_controller.dart';
import '../../../core/functions/valid_input.dart';
import '../../widget/authWidget/custom_button_auth.dart';
import '../../widget/authWidget/custom_sign_in_and_sign_up_auth.dart';
import '../../widget/authWidget/custom_text_form+field_auth.dart';
import '../../widget/custom_app_title_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp signUpControllerImp = Get.put(SignUpControllerImp());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: SingleChildScrollView(
            child: Form(
              key: signUpControllerImp.formState,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomAppTitleText(),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomTextFormFieldAuth(
                        label: "Username",
                        hintText: "Enter your name",
                        iconData: Icons.person,
                        typeKeyboard: TextInputType.text,
                        textEditingController: signUpControllerImp.username,
                        valid: (val) {
                          return validInput(val, "username", 5, 40);
                        }),
                    const SizedBox(
                      height: 25,
                    ),
                    GetBuilder<SignUpControllerImp>(
                        builder: (signUpControllerImp) {
                      return CustomTextFormFieldAuth(
                          label: "Email",
                          hintText: "Enter your email",
                          iconData: Icons.email,
                          typeKeyboard: TextInputType.emailAddress,
                          textEditingController: signUpControllerImp.email,
                          valid: (val) {
                            return validInput(val, "email", 10, 50);
                          });
                    }),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomTextFormFieldAuth(
                        label: "Password",
                        hintText: "Enter your password",
                        iconData: Icons.lock,
                        typeKeyboard: TextInputType.text,
                        textEditingController: signUpControllerImp.password,
                        valid: (val) {
                          return validInput(val, "password", 5, 40);
                        }),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomTextFormFieldAuth(
                      label: "Confirm Password",
                      hintText: "Enter your password",
                      iconData: Icons.lock,
                      typeKeyboard: TextInputType.text,
                      textEditingController:
                          signUpControllerImp.confirmPassword,
                      valid: (val) {
                        return validInput(val, "confirmPassword", 5, 40);
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButtonAuth(
                        text: "Sign Up",
                        width: 260,
                        height: 60,
                        onTap: () {
                          signUpControllerImp.signUp(context);
                        }),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomSignInAndSignUpAuth(
                        txt: "Already have an account?",
                        txtBtn: "sign In",
                        onPress: () {
                          signUpControllerImp.signIn();
                        }),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
