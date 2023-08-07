import 'package:flutter/material.dart';

class CustomTextFormEditAccount extends StatelessWidget {
  final String? txt;
  final void Function(String)? onChanged;
  final String? Function(String? str)? valid;
  CustomTextFormEditAccount(
      {this.txt, required this.onChanged, required this.valid});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: txt,
      onChanged: onChanged,
      validator: valid,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      )),
    );
  }
}
