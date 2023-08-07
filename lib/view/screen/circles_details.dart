import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/circles_details_controller.dart';
import 'package:untitled1/view/widget/custom_btn.dart';
import 'package:untitled1/view/widget/custom_circle_details.dart';
import 'package:untitled1/view/widget/custom_title.dart';
import 'package:untitled1/view/widget/custom_welcom_widget.dart';

class CirclesDetails extends StatelessWidget {
  const CirclesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    CirclesDetailsController circlesDetailsController =
        Get.put(CirclesDetailsController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Circles Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomWelcomeWidget(),
            SizedBox(
              height: 30,
            ),
            CustomTitle(title: 'Circles Details'),
            SizedBox(
              height: 30,
            ),
            CustomCircleDetails(),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                text: 'join',
                width: 160,
                height: 50,
                btnColor: Colors.blue,
                onTap: () {
                  circlesDetailsController.goToChooseRolePage();
                })
          ],
        ),
      ),
    );
  }
}
