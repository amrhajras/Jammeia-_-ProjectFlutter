



import 'package:flutter/material.dart';

class CustomAppTitleText extends StatelessWidget {
  const CustomAppTitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const  [
        Text("Jam",
        style: TextStyle(
          fontSize: 44,
          fontWeight: FontWeight.w900
        ),),
        Text("eia",
          style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.w900,
              color: Colors.blue
          ),),
      ],
    );
  }
}
