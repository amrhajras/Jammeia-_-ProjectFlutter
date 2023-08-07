import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';
import 'package:untitled1/view/widget/custom_btn.dart';
import 'package:untitled1/view/widget/custom_my_circle.dart';
import 'package:untitled1/view/widget/custom_welcom_widget.dart';
import '../../controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageControllerImp homePageControllerImp =
        Get.put(HomePageControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: const CustomNavigationDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomWelcomeWidget(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.money_off,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'My Circles',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'You are participated 3 circles',
              style: TextStyle(fontSize: 21),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return CustomMyCircles();
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                text: 'Join Circle',
                width: 200,
                height: 50,
                btnColor: Colors.blue,
                onTap: () {
                  homePageControllerImp.goToCirclePage();
                }),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                btnColor: Colors.blue,
                text: 'Start New Circle',
                width: 200,
                height: 50,
                onTap: () {
                  homePageControllerImp.goToStartNewCirclePage();
                }),
          ],
        ),
      ),
    );
  }
}
