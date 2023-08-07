import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/home_page_controller.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';

class CustomWelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomePageControllerImp homePageControllerImp =
        Get.put(HomePageControllerImp());
    return Center(
      child: Container(
          height: 130,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black38, offset: Offset(0, 3), blurRadius: 5)
              ],
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300),
          child: StreamBuilder(
            stream: homePageControllerImp.getUserInfo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          NetworkImage(snapshot.data.docs[0].data()['image']),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 30,
                              letterSpacing: 1.6,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          snapshot.data.docs[0].data()['name'],
                          style: const TextStyle(fontSize: 27),
                        ),
                      ],
                    ),
                  ],
                );
              } else if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Text('not fount data');
              }
            },
          )),
    );
  }
}
