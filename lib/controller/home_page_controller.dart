import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import '../core/constant/app_route.dart';
import '../core/service/my_service.dart';

abstract class HomePageController extends GetxController {
  signOut();
  goToCirclePage();
  goToStartNewCirclePage();
  Stream<QuerySnapshot> getUserInfo();
}

class HomePageControllerImp extends HomePageController {
  MyService myService = Get.find();
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  @override
  signOut() async {
    myService.sharedPreferences.setBool('isLogin', false);
    Get.offAllNamed(AppRoute.signIn);
    await FirebaseAuth.instance.signOut();
  }

  @override
  goToCirclePage() {
    Get.toNamed(AppRoute.circles);
  }

  @override
  Stream<QuerySnapshot> getUserInfo() {
    return myService.userCollection
        .where('uid', isEqualTo: myService.userId)
        .snapshots();
  }

  @override
  void onInit() {
    myService.userId = FirebaseAuth.instance.currentUser!.uid;
    firebaseMessaging.getToken().then((value) {
      print('---------------------------------');
      print(value);
    });
    super.onInit();
  }

  @override
  goToStartNewCirclePage() {
    Get.toNamed(AppRoute.startNewCirclePage);
  }
}
