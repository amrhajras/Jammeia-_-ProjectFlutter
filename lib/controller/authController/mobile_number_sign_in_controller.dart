import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../core/constant/app_route.dart';

abstract class MobileNumberSignInController extends GetxController {
  goToVerifyMobileNumberCode();
}

class MobileNumberSignInControllerImplementation
    extends MobileNumberSignInController {
  @override
  goToVerifyMobileNumberCode() {
    Get.offAllNamed(AppRoute.verifyMobileNumberCode);
  }
}
