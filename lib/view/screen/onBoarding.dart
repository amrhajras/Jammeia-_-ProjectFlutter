import 'package:flutter/material.dart';

import '../widget/onBoardingWidget/onBoarding_button.dart';
import '../widget/onBoardingWidget/onBoarding_dot.dart';
import '../widget/onBoardingWidget/onboarding_slider.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(flex: 8, child: OnBoardingSlider()),
              Expanded(flex: 1, child: OnBoardingDot()),
              Expanded(flex: 1, child: OnBoardingButton())
            ],
          ),
        ),
      ),
    );
  }
}
