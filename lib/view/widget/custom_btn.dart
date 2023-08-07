import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function()? onTap;
  final Color btnColor;
  const CustomButton(
      {required this.text,
      required this.width,
      required this.height,
      required this.onTap,
      required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(40)),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
