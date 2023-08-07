import 'package:flutter/material.dart';

class CustomAnswerWidget extends StatelessWidget {
  final void Function()? onTap;
  final String q;
  const CustomAnswerWidget({required this.onTap, required this.q});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            q,
            style: TextStyle(fontSize: 19),
            //textAlign: TextAlign.center,
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 40,
          ),
        ],
      ),
    );
  }
}
