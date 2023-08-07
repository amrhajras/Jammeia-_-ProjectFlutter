import 'package:get/get.dart';

import '../../core/constant/app_route.dart';

abstract class SuccessSignUpController extends GetxController {
  goToSignIn();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToSignIn() {
    Get.offAllNamed(AppRoute.signIn);
  }
}
