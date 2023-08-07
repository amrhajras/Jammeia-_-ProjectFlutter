import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/view/widget/custom_btn.dart';

showRequestDialog(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Image.asset(AppImageAsset.plane),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Your request has been sent to the administrator',
                style: TextStyle(
                  fontSize: 24,
                  height: 1.6,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                  btnColor: Colors.blue,
                  text: 'Ok',
                  width: 120,
                  height: 40,
                  onTap: () {}),
            ],
          ),
        );
      });
}
