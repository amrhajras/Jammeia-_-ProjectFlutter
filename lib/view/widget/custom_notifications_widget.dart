import 'package:flutter/material.dart';

class CustomNotificationsWidget extends StatelessWidget {
  final String title;

  const CustomNotificationsWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 7, left: 5, right: 5, top: 7),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(color: Colors.black38, offset: Offset(0, 2), blurRadius: 3),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.notifications_active_outlined,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 21),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
