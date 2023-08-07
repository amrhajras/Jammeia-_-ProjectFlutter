import 'package:get/get.dart';

import '../../core/constant/app_route.dart';

abstract class VerifyMobileNumberCodeController extends GetxController {
  goToMobileNumberSignIn();
  goToSignUp();
}

class VerifyMobileNumberCodeControllerImplementation
    extends VerifyMobileNumberCodeController {
  @override
  goToMobileNumberSignIn() {
    Get.offAllNamed(AppRoute.mobileNumberSignIn);
  }

  @override
  goToSignUp() {
    Get.offAllNamed(AppRoute.signUp);
  }
}
