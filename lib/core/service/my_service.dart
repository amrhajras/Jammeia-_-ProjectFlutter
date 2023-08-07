import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyService extends GetxService {
  late SharedPreferences sharedPreferences;
  String? userId;
  late CollectionReference<Map<String, dynamic>> userCollection;
  Future<MyService> inite() async {
    sharedPreferences = await SharedPreferences.getInstance();
    userCollection = FirebaseFirestore.instance.collection('user');
    return this;
  }

  @override
  // TODO: implement initialized
  bool get initialized => super.initialized;
}

initialServices() async {
  await Get.putAsync(() => MyService().inite());
}
