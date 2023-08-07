import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled1/core/constant/app_route.dart';

import '../core/service/my_service.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AccountController extends GetxController {
  MyService myService = Get.find();
  @override
  Stream<QuerySnapshot> getUserInfo() {
    return myService.userCollection
        .where('uid', isEqualTo: myService.userId)
        .snapshots();
  }

  Color buttonColor = Colors.blue.shade200;
  String? name;
  String? email;
  String? phone;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  statusButton() {
    if (name != null || email != null || phone != null) {
      buttonColor = Colors.blue;
      update();
    }
  }

  editInfo(context) {
    var currentState = formState.currentState;
    if (currentState!.validate()) {
      if (name != null || email != null || phone != null) {
        AwesomeDialog(
            context: context,
            animType: AnimType.bottomSlide,
            dialogType: DialogType.question,
            title: 'your sure ',
            body: Text('Your Sure Edit your Information'),
            btnOkOnPress: () {
              if (name != null) {
                myService.userCollection
                    .doc(myService.userId)
                    .update({'name': name});
              }
              if (phone != null) {
                myService.userCollection
                    .doc(myService.userId)
                    .update({'phone': phone});
              }
              if (email != null) {
                myService.userCollection
                    .doc(myService.userId)
                    .update({'email': email});
              }
              Get.toNamed(AppRoute.homePage);
            }).show();
      }
    }
  }
}
