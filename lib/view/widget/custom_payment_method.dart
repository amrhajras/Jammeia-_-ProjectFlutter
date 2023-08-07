import 'package:flutter/material.dart';

class CustomPaymentMethod extends StatelessWidget {
  final void Function()? onTap;
  final String path;
  final String txt1;
  final String txt2;

  const CustomPaymentMethod(
      {required this.onTap,
      required this.path,
      required this.txt1,
      required this.txt2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(vertical: 15),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(3, 3), blurRadius: 6, color: Colors.black38),
            ]),
        child: Row(
          children: [
            Image.asset(
              path,
              width: 60,
              height: 60,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  txt1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  txt2,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                      fontSize: 22),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
