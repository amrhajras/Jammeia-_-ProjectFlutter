import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/drawer_controller.dart';
import '../../../core/constant/app_route.dart';
import '../../../view/widget/drawer/build_drawer_header.dart';
import '../../../view/widget/drawer/build_drawer_item.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DrawerControllerImp drawerControllerImp = Get.put(DrawerControllerImp());
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            StreamBuilder(
                stream: drawerControllerImp.getUserInfo(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return BuildDrawerHeader(
                      userName: snapshot.data.docs[0].data()['name'],
                      userEmail: snapshot.data.docs[0].data()['email'],
                      image:
                          NetworkImage(snapshot.data.docs[0].data()['image']),
                      onTapCamera: () {
                        drawerControllerImp.pickCamera();
                      },
                      onTapGallery: () {
                        drawerControllerImp.pickGallery();
                      },
                    );
                  } else if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return const Text('not fount data');
                  }
                }),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Colors.black26,
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: "HomePage",
              icon: Icons.home,
              colorIcon: (Get.currentRoute == AppRoute.homePage)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.homePage)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToHomePage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: "Circles",
              icon: Icons.currency_bitcoin,
              colorIcon: (Get.currentRoute == AppRoute.circles)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.circles)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToCirclesPage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: "Payment",
              icon: Icons.payment,
              colorIcon: (Get.currentRoute == AppRoute.payment)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.payment)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToPaymentPage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: "Notifications",
              icon: Icons.notifications,
              colorIcon: (Get.currentRoute == AppRoute.notificationsPage)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.notificationsPage)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToNotificationsPage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: "What Is New",
              icon: Icons.question_mark,
              colorIcon: (Get.currentRoute == "") ? Colors.blue : Colors.grey,
              colorTitle: (Get.currentRoute == "") ? Colors.blue : Colors.grey,
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: 'Invite People',
              icon: Icons.group,
              colorIcon: (Get.currentRoute == AppRoute.invitePeoplePage)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.invitePeoplePage)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToInvitePeoplePage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: 'About Us',
              icon: Icons.info,
              colorIcon: (Get.currentRoute == AppRoute.aboutUsPage)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.aboutUsPage)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToAboutUsPage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: 'Settings',
              icon: Icons.settings,
              colorIcon: (Get.currentRoute == AppRoute.settings)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.settings)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToSettingsPage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: 'Help',
              icon: Icons.help,
              colorIcon: (Get.currentRoute == AppRoute.help)
                  ? Colors.blue
                  : Colors.grey,
              colorTitle: (Get.currentRoute == AppRoute.help)
                  ? Colors.blue
                  : Colors.grey,
              onTap: () {
                drawerControllerImp.goToHelpPage();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BuildDrawerItem(
              title: 'Logout',
              icon: Icons.logout,
              colorIcon: (Get.currentRoute == "") ? Colors.blue : Colors.grey,
              colorTitle: (Get.currentRoute == "") ? Colors.blue : Colors.grey,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
