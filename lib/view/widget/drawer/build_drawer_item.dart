import 'package:flutter/material.dart';

class BuildDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color colorTitle;
  final Color colorIcon;
  final void Function()? onTap;
  const BuildDrawerItem({
    required this.title,
    required this.icon,
    required this.colorTitle,
    required this.colorIcon,
    required this.onTap
});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(title,
        style:  TextStyle(
              fontSize: 20,
              color: colorIcon
        ),),
        leading: Icon(
          icon,
          size:32,
          color: colorIcon,
        ),
      ),
    );
  }
}
