
import 'package:flutter/material.dart';

class CustomTitleAuth extends StatelessWidget {
  final String textTitleAuth;
  const CustomTitleAuth({
    required this.textTitleAuth
});

  @override
  Widget build(BuildContext context) {
    return  Text(textTitleAuth,
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 21
      ),);
  }
}
