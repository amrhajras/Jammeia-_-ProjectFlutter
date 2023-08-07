import 'package:get/get.dart';
import 'package:untitled1/core/constant/app_route.dart';

class CirclesController extends GetxController {
  goToCirclesDetails() {
    Get.toNamed(AppRoute.circlesDetails);
  }
}
