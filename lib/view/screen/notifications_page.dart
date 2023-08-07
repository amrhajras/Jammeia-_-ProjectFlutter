import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';
import 'package:untitled1/view/widget/custom_notifications_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      drawer: CustomNavigationDrawer(),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Image.asset(
              AppImageAsset.notify,
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications_active_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return CustomNotificationsWidget(
                        title:
                            'Help us spread the app and \nincrease the number of users \nto get discounts');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
