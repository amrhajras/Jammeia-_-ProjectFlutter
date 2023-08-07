import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/choose_role_controller.dart';
import 'package:untitled1/view/widget/custom_btn.dart';
import 'package:untitled1/view/widget/custom_role_widget.dart';
import 'package:untitled1/view/widget/custom_title.dart';
import 'package:untitled1/view/widget/custom_welcom_widget.dart';

class ChooseRole extends StatelessWidget {
  const ChooseRole({super.key});

  @override
  Widget build(BuildContext context) {
    ChooseRoleController chooseRoleController = Get.put(ChooseRoleController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Role'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          children: [
            CustomWelcomeWidget(),
            const SizedBox(
              height: 20,
            ),
            const CustomTitle(title: 'Select your role'),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 430,
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 11,
                      crossAxisSpacing: 11),
                  itemBuilder: (context, i) {
                    return CustomRoleWidget(
                      role: i + 1,
                    );
                  }),
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
                text: 'Done',
                width: 160,
                height: 50,
                btnColor: Colors.blue,
                onTap: () {
                  chooseRoleController.goToEligibilityPage();
                })
          ],
        ),
      ),
    );
  }
}
