import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled1/core/constant/app_route.dart';
import '../core/service/my_service.dart';

class SettingsController extends GetxController {
  MyService myService = Get.find();
  goToAccountPage() {
    Get.toNamed(AppRoute.account);
  }

  @override
  Stream<QuerySnapshot> getUserInfo() {
    return myService.userCollection
        .where('uid', isEqualTo: myService.userId)
        .snapshots();
  }
}
