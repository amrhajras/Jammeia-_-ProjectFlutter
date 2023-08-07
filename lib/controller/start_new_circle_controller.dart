import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/service/my_service.dart';

class StartNewCircleController extends GetxController {
  MyService myService = Get.find();
  Stream<QuerySnapshot> getUserInfo() {
    return myService.userCollection
        .where('uid', isEqualTo: myService.userId)
        .snapshots();
  }
}
