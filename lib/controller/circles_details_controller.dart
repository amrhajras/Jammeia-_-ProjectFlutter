import 'package:get/get.dart';

import '../core/constant/app_route.dart';

class CirclesDetailsController extends GetxController {
  goToChooseRolePage() {
    Get.toNamed(AppRoute.chooseRole);
  }
}
