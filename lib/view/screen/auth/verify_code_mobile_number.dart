import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/authController/verify_mobile_number_code_controller.dart';
import '../../../core/constant/app_image_asset.dart';
import '../../widget/authWidget/custom_body_auth.dart';
import '../../widget/authWidget/custom_button_auth.dart';
import '../../widget/authWidget/custom_title_auth.dart';
import '../../widget/custom_app_title_text.dart';

class VerifyMobileNumberCode extends StatelessWidget {
  VerifyMobileNumberCode({Key? key}) : super(key: key);
  VerifyMobileNumberCodeControllerImplementation
      verifyMobileNumberCodeControllerImplementation =
      Get.put(VerifyMobileNumberCodeControllerImplementation());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomAppTitleText(),
              const SizedBox(
                height: 30,
              ),
              Image.asset(AppImageAsset.verification),
              const SizedBox(
                height: 40,
              ),
              const CustomTitleAuth(textTitleAuth: "Enter the code sent to"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomBodyAuth(textBodyAuth: "+970 500000000"),
                  TextButton(
                      onPressed: () {
                        verifyMobileNumberCodeControllerImplementation
                            .goToMobileNumberSignIn();
                      },
                      child: const Text(
                        "Change number",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      OtpTextField(
                        numberOfFields: 4,
                        borderColor: Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        borderRadius: BorderRadius.circular(12),
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        fieldWidth: 50,
                        onSubmit: (String verificationCode) {
                          verifyMobileNumberCodeControllerImplementation
                              .goToSignUp();
                        }, // end onSubmit
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Did'nt receive code?",
                            style: TextStyle(fontSize: 19),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "RESEND",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButtonAuth(
                          text: "Continue",
                          width: 240,
                          height: 60,
                          onTap: () {
                            verifyMobileNumberCodeControllerImplementation
                                .goToSignUp();
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
