import 'package:flutter/material.dart';

class CustomStartNewCircleWidget extends StatelessWidget {
  const CustomStartNewCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(15),
      height: 140,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 2), blurRadius: 3)
          ]),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: const Column(
              children: [
                Icon(
                  Icons.group_add,
                  size: 50,
                ),
                Text(
                  'Number Of Members',
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
          ),
          const VerticalDivider(
            color: Colors.black38,
            width: 20,
            thickness: 1.1,
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2, 2),
                        blurRadius: 3)
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
