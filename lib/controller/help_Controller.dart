import 'package:get/get.dart';
import 'package:untitled1/core/constant/app_route.dart';

class HelpController extends GetxController {
  List<String> FAQs = [
    "What is Money Circles ?",
    "Why should is trust Money Circles ?",
    "Why  Money Circles is better than \nthe traditional offline Money Circle?",
    "How much fees does the   app take?",
    "How can is do payment ?",
  ];
  List<String> answer = [
    "Money Circles application helps user join secured circles with guarantee that they will receive their money, they may create a new circle or join an existing one. Members can't join any circle until the application verifies the eligibility of each member.",
    "Each user has to sign a legal contract to make sure that all users can pay their installments. In case other users fail to pay their due amounts, Money Circles covers their share to make sure you get your full payout.",
    "Money Circles is the evolution of traditional Money Circles, it’s: Always available at a click of a button. Not bound by your current social circle or geographical location. Secured. Everyone signs a legally binding contract. Various Pay-in and Payout methods.",
    "The application takes 1% from members who join a circle as a subscriber fees. The application also takes fees on the user role in the circle on the first 4 roles it takes 4% , 3% , 2% and 1% from the first, second , third and fourth members excluding the subscriber fees.",
    '''The application offer multiple payment gateway for the user to make it easy for them do payment such as:
  Bank transfer
  Jawwal Pay
  Pal Pay''',
  ];

  goToLiveChatPage() {
    Get.toNamed(AppRoute.liveChat);
  }
}
