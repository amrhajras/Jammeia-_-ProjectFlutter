import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled1/core/service/my_service.dart';
import '../core/constant/app_route.dart';
import 'package:path/path.dart';

abstract class DrawerController extends GetxController {
  goToHomePage();
  goToCirclesPage();
  goToNotificationsPage();
  goToInvitePeoplePage();
  goToAboutUsPage();
  goToHelpPage();
  goToSettingsPage();
  goToPaymentPage();
  Stream<QuerySnapshot> getUserInfo();
}

class DrawerControllerImp extends DrawerController {
  MyService myService = Get.find();
  ImagePicker imagePicker = ImagePicker();
  XFile? pickImage;
  File? image;
  String? imagePath;
  String? imageName;
  @override
  Stream<QuerySnapshot> getUserInfo() {
    return myService.userCollection
        .where('uid', isEqualTo: myService.userId)
        .snapshots();
  }

  @override
  goToCirclesPage() {
    Get.toNamed(AppRoute.circles);
  }

  @override
  goToPaymentPage() {
    Get.toNamed(AppRoute.payment);
  }

  @override
  goToAboutUsPage() {
    Get.toNamed(AppRoute.aboutUsPage);
  }

  @override
  goToSettingsPage() {
    Get.toNamed(AppRoute.settings);
  }

  @override
  goToHelpPage() {
    Get.toNamed(AppRoute.help);
  }

  @override
  goToInvitePeoplePage() {
    Get.toNamed(AppRoute.invitePeoplePage);
  }

  @override
  goToNotificationsPage() {
    Get.toNamed(AppRoute.notificationsPage);
  }

  @override
  goToHomePage() {
    Get.toNamed(AppRoute.homePage);
  }

  pickCamera() async {
    pickImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickImage != null) {
      image = File(pickImage!.path);
      uploadImage(pickImage: pickImage);
    }
  }

  pickGallery() async {
    pickImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickImage != null) {
      image = File(pickImage!.path);
      uploadImage(pickImage: pickImage);
    }
  }

  uploadImage({required XFile? pickImage}) async {
    image = File(pickImage!.path);
    imagePath = pickImage.path;
    imageName = basename(imagePath!);
    Reference ref = FirebaseStorage.instance.ref('images').child(imageName!);
    final TaskSnapshot snapshot = await ref.putFile(image!);
    print('---------------------------------');
    String url = await snapshot.ref.getDownloadURL();
    print('url = $url');
    updateImage(url: url);
  }

  updateImage({required String url}) {
    myService.userCollection.doc(myService.userId).update({
      'image': url,
    });
  }
}
