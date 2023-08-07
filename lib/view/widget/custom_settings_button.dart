import 'package:flutter/material.dart';

class CustomSettingsButton extends StatelessWidget {
  final void Function()? onTap;
  final IconData firstIcon;
  IconData? secondIcon;
  final String title;

  CustomSettingsButton(
      {required this.onTap,
      required this.firstIcon,
      required this.title,
      this.secondIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black38, blurRadius: 2, offset: Offset(0, 2)),
        ]),
        child: Row(
          children: [
            Icon(
              firstIcon,
              size: 40,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            Spacer(flex: 8),
            Icon(
              secondIcon,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
