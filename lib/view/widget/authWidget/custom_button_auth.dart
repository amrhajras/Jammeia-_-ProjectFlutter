

import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {

  final String text;
  final double width;
  final double height;
  final void Function()? onTap;
  const CustomButtonAuth({
    required this.text,
    required this.width,
    required this.height,
    required this.onTap

});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Text(
          text,
          style:const TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),

    );
  }
}
