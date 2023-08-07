import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/core/functions/request_dialog.dart';
import 'package:untitled1/view/widget/custom_btn.dart';

class Eligibility extends StatelessWidget {
  const Eligibility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eligibility'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(21),
        child: Column(
          children: [
            Image.asset(AppImageAsset.note),
            SizedBox(
              height: 20,
            ),
            Text(
              'Please go to the bank to verify eligibility to enter the circle, and you must bring the following:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '1-Your identification or passport\n2-Your bank statement for your salary for six months',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Then you will sign a legal contract.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 90,
            ),
            CustomButton(
                text: 'Ok',
                width: 140,
                height: 50,
                btnColor: Colors.blue,
                onTap: () {
                  showRequestDialog(context);
                })
          ],
        ),
      ),
    );
  }
}
