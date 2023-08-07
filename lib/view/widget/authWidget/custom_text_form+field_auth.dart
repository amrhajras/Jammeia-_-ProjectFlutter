

import 'package:flutter/material.dart';

class CustomTextFormFieldAuth extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData iconData;
  final TextInputType typeKeyboard;
  final TextEditingController textEditingController;
  final String? Function(String? str)? valid;
  const CustomTextFormFieldAuth({
   required this.iconData,
    required this.hintText,
    required this.label,
    required this.typeKeyboard,
    required this.valid,
    required this.textEditingController,
  }) ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.go,
      keyboardType:typeKeyboard ,
      validator: valid,
      controller: textEditingController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
          ),

          label: Text(label),
          hintText: hintText,
          prefixIcon:  Icon(
              iconData
          )
      ),
    );
  }
}