import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onBoarding_controller.dart';
import '../../../data/datasource/static.dart';

class OnBoardingDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImplementation>(
        builder: (onBoardingControllerImplementation) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.all(3),
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              height: 10,
              width: index == onBoardingControllerImplementation.indexCurrent
                  ? 20
                  : 10,
            ),
          ),
        ],
      );
    });
  }
}
