import 'package:flutter/material.dart';

class CustomAccountWidget extends StatelessWidget {
  final IconData firstIcon;
  final String title;

  const CustomAccountWidget({required this.title, required this.firstIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          firstIcon,
          size: 33,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
