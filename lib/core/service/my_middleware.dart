import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/authController/sign_in_controller.dart';
import '../constant/app_route.dart';
import 'my_service.dart';

class MyMiddleware extends GetMiddleware {
  MyService myService = Get.find();

  SignInControllerImp signInControllerImp = Get.put(SignInControllerImp());
  @override
  // TODO: implement priority
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (myService.sharedPreferences.getBool('isLogin') == true) {
      return const RouteSettings(name: AppRoute.homePage);
    }
  }
}
