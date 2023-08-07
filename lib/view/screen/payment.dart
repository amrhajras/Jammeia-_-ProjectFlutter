import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled1/controller/payment_controller.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';
import 'package:untitled1/view/widget/authWidget/custom_button_auth.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentController paymentController = Get.put(PaymentController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true,
      ),
      drawer: CustomNavigationDrawer(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 3,
                        color: Colors.black38)
                  ],
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Image.asset(
                    AppImageAsset.currency,
                    height: 90,
                    width: 90,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Balance',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '600\$',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  IconButton(
                    onPressed: () {
                      paymentController.goToPaymentMethodPage();
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.blue,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(AppImageAsset.wallet),
            SizedBox(
              height: 30,
            ),
            Text(
              'You don\'t have any payment yet',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your payments will appear here after you join a circle ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            CustomButtonAuth(
                text: 'join a circle',
                width: 180,
                height: 60,
                onTap: () {
                  paymentController.goToCirclePage();
                })
          ],
        ),
      ),
    );
  }
}
