

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onBoarding_controller.dart';

class OnBoardingButton extends StatelessWidget {


  OnBoardingControllerImplementation  onBoardingControllerImplementation =
  Get.put(OnBoardingControllerImplementation());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MaterialButton(
          onPressed:(){
               onBoardingControllerImplementation.goToMobileNumberSignIn();
          },

          minWidth: 70,
          height: 70,



          child:const Text("Skip",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blue
            ),
          ),
        ),
        MaterialButton(
          onPressed:(){
            onBoardingControllerImplementation.nextPage();
          },
          color: Colors.blue,
          minWidth: 70,
          height: 70,

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          ),
          child:const  Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),

      ],
    );
  }
}
