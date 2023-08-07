
import 'package:flutter/material.dart';

class CustomSignInAndSignUpAuth extends StatelessWidget {
  final String txt;
  final String txtBtn;
  final  void Function() onPress;
  const CustomSignInAndSignUpAuth({
       required this.txt,
       required this.txtBtn,
    required this.onPress

  }) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
         Text(txt,
          style: const TextStyle(
              fontSize: 19
          ),),
        TextButton(onPressed:onPress
            , child:  Text(txtBtn,
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600
          ),)),
      ],
    );
  }
}