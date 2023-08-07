import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/setting_controller.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';
import 'package:untitled1/view/widget/custom_settings_button.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      drawer: const CustomNavigationDrawer(),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: StreamBuilder(
            stream: settingsController.getUserInfo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          NetworkImage(snapshot.data.docs[0].data()['image']),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      snapshot.data.docs[0].data()['name'],
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      snapshot.data.docs[0].data()['phone'],
                      style: const TextStyle(
                          fontSize: 23, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomSettingsButton(
                      onTap: () {
                        settingsController.goToAccountPage();
                      },
                      title: 'Account',
                      firstIcon: Icons.person,
                      secondIcon: Icons.arrow_forward_ios_outlined,
                    ),
                    CustomSettingsButton(
                      onTap: () {},
                      title: 'Language',
                      firstIcon: Icons.language,
                      secondIcon: Icons.arrow_forward_ios_outlined,
                    ),
                    CustomSettingsButton(
                      onTap: () {},
                      title: 'Logout',
                      firstIcon: Icons.logout,
                    ),
                  ],
                );
              } else if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const Text('not fount data');
              }
            },
          )),
    );
  }
}
