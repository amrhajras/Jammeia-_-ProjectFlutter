import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/start_new_circle_controller.dart';
import 'package:untitled1/view/widget/custom_btn.dart';
import 'package:untitled1/view/widget/custom_start_new_circle_widget.dart';

class StartNewCirclePage extends StatelessWidget {
  const StartNewCirclePage({super.key});

  @override
  Widget build(BuildContext context) {
    StartNewCircleController startNewCircleController =
        Get.put(StartNewCircleController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(390)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: Column(
                children: [
                  StreamBuilder(
                    stream: startNewCircleController.getUserInfo(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return Row(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                  snapshot.data.docs[0].data()['image']),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Welcome\n${snapshot.data.docs[0].data()['name']},\nnow you can start \n a new circle',
                              style: const TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500),
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
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    height: 510,
                    child: ListView(
                      children: [
                        CustomStartNewCircleWidget(),
                        CustomStartNewCircleWidget(),
                        CustomStartNewCircleWidget(),
                        CustomStartNewCircleWidget(),
                        CustomStartNewCircleWidget(),
                        CustomStartNewCircleWidget(),
                      ],
                    ),
                  ),
                  CustomButton(
                      text: 'Add Circle',
                      width: 220,
                      height: 70,
                      onTap: () {},
                      btnColor: Colors.blue)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
