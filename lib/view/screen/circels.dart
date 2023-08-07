import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/circles_controller.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';
import 'package:untitled1/view/widget/custom_circle_widget.dart';
import 'package:untitled1/view/widget/custom_title.dart';

class Circles extends StatelessWidget {
  const Circles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CirclesController circlesController = Get.put(CirclesController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Circels"),
      ),
      drawer: CustomNavigationDrawer(),
      body: Padding(
        padding: EdgeInsets.all(23),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.black45,
                      offset: Offset(0, 2))
                ],
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTitle(title: 'Circles'),
            SizedBox(
              height: 15,
            ),
            Text('There are 6 circles available',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return CustomCircleWidget(
                      onTap: () {
                        circlesController.goToCirclesDetails();
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
