import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/app_route.dart';
import '../data/datasource/static.dart';

abstract class OnBoardingController extends GetxController {
  nextPage();
  onChangePage(int index);
  goToMobileNumberSignIn();
}

class OnBoardingControllerImplementation extends OnBoardingController {
  int indexCurrent = 0;
  PageController? pageController;
  @override
  nextPage() {
    indexCurrent++;
    if (indexCurrent < onBoardingList.length) {
      pageController!.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    } else {
      Get.offAllNamed(AppRoute.mobileNumberSignIn);
    }
  }

  @override
  onChangePage(int index) {
    indexCurrent = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  goToMobileNumberSignIn() {
    Get.offAllNamed(AppRoute.mobileNumberSignIn);
  }
}
