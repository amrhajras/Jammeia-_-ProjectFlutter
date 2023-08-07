import 'package:get/get.dart';
import 'package:untitled1/core/constant/app_route.dart';

class PaymentController extends GetxController {
  goToPaymentMethodPage() {
    Get.toNamed(AppRoute.paymentMethod);
  }

  goToCirclePage() {
    Get.toNamed(AppRoute.circles);
  }
}
