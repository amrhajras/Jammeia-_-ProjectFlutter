import 'package:flutter/material.dart';

answerDialog(String q, String a, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Colors.black38,
              thickness: 3,
            ),
            Text(
              q,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.black38,
              thickness: 3,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              a,
              style: TextStyle(fontSize: 22, height: 1.4),
            ),
          ],
        ),
      );
    },
  );
}
