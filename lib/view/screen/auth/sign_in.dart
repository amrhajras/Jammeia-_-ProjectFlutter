import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/authController/sign_in_controller.dart';
import '../../../core/constant/app_image_asset.dart';
import '../../../core/functions/valid_input.dart';
import '../../widget/authWidget/custom_button_auth.dart';
import '../../widget/authWidget/custom_sign_in_and_sign_up_auth.dart';
import '../../widget/authWidget/custom_text_form+field_auth.dart';
import '../../widget/custom_app_title_text.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInControllerImp signInControllerImp = Get.put(SignInControllerImp());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Form(
              key: signInControllerImp.formState,
              child: Column(
                children: [
                  Image.asset(AppImageAsset.person, height: 150),
                  const CustomAppTitleText(),
                  const SizedBox(
                    height: 35,
                  ),
                  GetBuilder<SignInControllerImp>(
                      builder: (signInControllerImp) {
                    return CustomTextFormFieldAuth(
                        iconData: Icons.person,
                        hintText: "Email",
                        label: "Enter your email",
                        typeKeyboard: TextInputType.emailAddress,
                        textEditingController: signInControllerImp.email,
                        valid: (val) {
                          return validInput(val, "email", 10, 60);
                        });
                  }),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextFormFieldAuth(
                      iconData: Icons.lock,
                      hintText: "Password",
                      label: "Enter your password",
                      typeKeyboard: TextInputType.text,
                      textEditingController: signInControllerImp.password,
                      valid: (val) {
                        return validInput(val, "password", 5, 30);
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomButtonAuth(
                      text: "Sign In",
                      width: 260,
                      height: 60,
                      onTap: () {
                        signInControllerImp.signIn(context);
                      }),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomSignInAndSignUpAuth(
                      txt: "Don't have an account?",
                      txtBtn: "Sign Up",
                      onPress: () {
                        signInControllerImp.signUp();
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      Expanded(flex: 2, child: Text("     Or Sign In With ")),
                      Expanded(
                        flex: 2,
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue,
                              border:
                                  Border.all(color: Colors.black38, width: 2)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.facebook,
                                size: 35,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.black38, width: 2)),
                          child: Row(
                            //mainAxisSize: MainAxisSize.min,
                            children: const [
                              // CircleAvatar(
                              //   backgroundImage: AssetImage(AppImageAsset.google),
                              //   radius: 20,
                              // ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Google",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
