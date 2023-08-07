import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/view/widget/custom_payment_method.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Choose Your Payment Method',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(height: 40),
            CustomPaymentMethod(
              onTap: () {},
              path: AppImageAsset.bank,
              txt1: 'Bank Transfer',
              txt2: 'direct your payment to \nyour bank account.',
            ),
            CustomPaymentMethod(
              onTap: () {},
              path: AppImageAsset.jawwal,
              txt1: 'Jawwal Pay',
              txt2: 'do your payment using \ndigital wallet.',
            ),
            CustomPaymentMethod(
              onTap: () {},
              path: AppImageAsset.paypal,
              txt1: 'Pay Pal',
              txt2: 'do your payment using \ndigital wallet.',
            ),
          ],
        ),
      ),
    );
  }
}
