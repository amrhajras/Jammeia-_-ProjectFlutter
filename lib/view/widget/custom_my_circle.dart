import 'package:flutter/material.dart';

class CustomMyCircles extends StatelessWidget {
  const CustomMyCircles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black38, offset: Offset(0, 3), blurRadius: 5)
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Circle Id',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: const [
              Text(
                'subscription status',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'under review',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
