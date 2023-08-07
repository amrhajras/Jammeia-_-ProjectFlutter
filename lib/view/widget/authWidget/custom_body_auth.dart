

import 'package:flutter/material.dart';

class CustomBodyAuth extends StatelessWidget {
  final String textBodyAuth;
  const CustomBodyAuth({
    required this.textBodyAuth
});

  @override
  Widget build(BuildContext context) {
    return Text(textBodyAuth,
      style:const  TextStyle(

          fontSize: 19
      ),);
  }
}
