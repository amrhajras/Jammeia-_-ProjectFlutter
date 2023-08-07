import 'package:get/get.dart';
import 'package:untitled1/view/screen/Settings.dart';
import 'package:untitled1/view/screen/about_us.dart';
import 'package:untitled1/view/screen/account.dart';
import 'package:untitled1/view/screen/auth/mobile_number_signIn.dart';
import 'package:untitled1/view/screen/auth/sign_in.dart';
import 'package:untitled1/view/screen/auth/sign_up.dart';
import 'package:untitled1/view/screen/auth/success_sign_up.dart';
import 'package:untitled1/view/screen/auth/verify_code_mobile_number.dart';
import 'package:untitled1/view/screen/choose_role.dart';
import 'package:untitled1/view/screen/circels.dart';
import 'package:untitled1/view/screen/circles_details.dart';
import 'package:untitled1/view/screen/eligiblity.dart';
import 'package:untitled1/view/screen/help.dart';
import 'package:untitled1/view/screen/home_page.dart';
import 'package:untitled1/view/screen/invite_people.dart';
import 'package:untitled1/view/screen/live_chat.dart';
import 'package:untitled1/view/screen/notifications_page.dart';
import 'package:untitled1/view/screen/onBoarding.dart';
import 'package:untitled1/view/screen/payment.dart';
import 'package:untitled1/view/screen/payment_method.dart';
import 'package:untitled1/view/screen/start_new_circle_page.dart';

import 'core/constant/app_route.dart';
import 'core/service/my_middleware.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoute.onBoarding, page: () => OnBoarding(), middlewares: [
    MyMiddleware(),
  ]),
  GetPage(name: AppRoute.signUp, page: () => SignUp()),
  GetPage(name: AppRoute.mobileNumberSignIn, page: () => MobileNumberSignIn()),
  GetPage(
      name: AppRoute.verifyMobileNumberCode,
      page: () => VerifyMobileNumberCode()),
  GetPage(name: AppRoute.successSignUp, page: () => SuccessSignUp()),
  GetPage(name: AppRoute.signIn, page: () => SignIn()),
  GetPage(name: AppRoute.homePage, page: () => HomePage()),
  GetPage(name: AppRoute.circles, page: () => Circles()),
  GetPage(name: AppRoute.notificationsPage, page: () => NotificationPage()),
  GetPage(name: AppRoute.invitePeoplePage, page: () => InvitePeople()),
  GetPage(name: AppRoute.aboutUsPage, page: () => AboutUs()),
  GetPage(name: AppRoute.circlesDetails, page: () => CirclesDetails()),
  GetPage(name: AppRoute.chooseRole, page: () => ChooseRole()),
  GetPage(name: AppRoute.eligibility, page: () => Eligibility()),
  GetPage(name: AppRoute.help, page: () => Help()),
  GetPage(name: AppRoute.liveChat, page: () => LiveChat()),
  GetPage(name: AppRoute.settings, page: () => Settings()),
  GetPage(name: AppRoute.account, page: () => Account()),
  GetPage(name: AppRoute.payment, page: () => Payment()),
  GetPage(name: AppRoute.paymentMethod, page: () => PaymentMethod()),
  GetPage(name: AppRoute.startNewCirclePage, page: () => StartNewCirclePage()),
];
