import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';

class CustomRoleWidget extends StatelessWidget {
  final int role;
  const CustomRoleWidget({required this.role});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4, color: Colors.black45, offset: Offset(2, 2))
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            color: Colors.black45,
                            offset: Offset(1, 2)),
                        // BoxShadow(
                        //     blurRadius: 3,
                        //     color: Colors.black45,
                        //     offset: Offset(0, -2))
                      ],
                      image: DecorationImage(
                        image: AssetImage(AppImageAsset.funky),
                      )),
                ),
                Container(
                  height: 40,
                  width: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade100,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black45,
                            offset: Offset(2, 2))
                      ]),
                  child: Text(
                    '$role',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Received On :',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              'DD/MM/YY ',
              style: TextStyle(fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
