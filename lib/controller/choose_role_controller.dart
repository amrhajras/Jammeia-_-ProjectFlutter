import 'package:get/get.dart';
import 'package:untitled1/core/constant/app_route.dart';

class ChooseRoleController extends GetxController {
  goToEligibilityPage() {
    Get.toNamed(AppRoute.eligibility);
  }
}
