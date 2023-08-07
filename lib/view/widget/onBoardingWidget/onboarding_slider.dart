import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onBoarding_controller.dart';
import '../../../data/datasource/static.dart';

class OnBoardingSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImplementation onBoardingControllerImplementation =
        Get.put(OnBoardingControllerImplementation());
    return PageView.builder(
        itemCount: onBoardingList.length,
        controller: onBoardingControllerImplementation.pageController,
        onPageChanged: (val) {
          onBoardingControllerImplementation.onChangePage(val);
        },
        itemBuilder: (context, i) {
          return Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Image.asset(
                    onBoardingList[i].backUrl,
                    width: 300,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    onBoardingList[i].frontUrl,
                    width: 250,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Text(
                onBoardingList[i].title,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Text(
                onBoardingList[i].body,
                style: const TextStyle(
                    fontSize: 20, height: 1.4, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ],
          );
        });
  }
}
