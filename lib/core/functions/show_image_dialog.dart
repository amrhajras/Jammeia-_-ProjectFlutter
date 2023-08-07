import 'package:flutter/material.dart';
import 'package:get/get.dart';

showImageDialog(
    {required void Function()? onTap1, required void Function()? onTap2}) {
  Get.defaultDialog(
      title: 'Image Picker',
      titlePadding: const EdgeInsets.only(top: 25),
      content: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            InkWell(
              onTap: onTap1,
              child: Row(
                children: const [
                  Icon(
                    Icons.camera_alt_sharp,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'from camera',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: onTap2,
              child: Row(
                children: const [
                  Icon(
                    Icons.browse_gallery,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'from gallery',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
}
