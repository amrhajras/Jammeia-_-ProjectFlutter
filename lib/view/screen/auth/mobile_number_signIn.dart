import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../controller/authController/mobile_number_sign_in_controller.dart';
import '../../../core/constant/app_image_asset.dart';
import '../../widget/authWidget/custom_body_auth.dart';
import '../../widget/authWidget/custom_button_auth.dart';
import '../../widget/authWidget/custom_title_auth.dart';
import '../../widget/custom_app_title_text.dart';

class MobileNumberSignIn extends StatelessWidget {
  MobileNumberSignIn({Key? key}) : super(key: key);

  MobileNumberSignInControllerImplementation
      mobileNumberSignInControllerImplementation =
      Get.put(MobileNumberSignInControllerImplementation());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const CustomAppTitleText(),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(AppImageAsset.mobile),
                const SizedBox(
                  height: 30,
                ),
                const CustomTitleAuth(
                    textTitleAuth: "Please enter your mobile number"),
                const SizedBox(
                  height: 10,
                ),
                const CustomBodyAuth(
                  textBodyAuth: "we will send the 4 digit verification code ",
                ),
                const SizedBox(
                  height: 50,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: "500000000",
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  initialCountryCode: 'PS',
                  showDropdownIcon: false,
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonAuth(
                  text: "Continue",
                  width: 220,
                  height: 60,
                  onTap: () {
                    mobileNumberSignInControllerImplementation
                        .goToVerifyMobileNumberCode();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.language,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "تغيير الى العربية",
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
