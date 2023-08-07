import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';
import 'package:untitled1/view/widget/custom_btn.dart';

class InvitePeople extends StatelessWidget {
  const InvitePeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Friends'),
      ),
      drawer: CustomNavigationDrawer(),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Image.asset(
              AppImageAsset.share,
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Every time a friend of yous joins a circle for the first time using\nyour invitation link, both of you get 1% discount',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Invitation link',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              readOnly: true,
              initialValue: 'https://moneyCircels.com',
              style: TextStyle(fontSize: 23),
              decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.copy,
                      size: 30,
                    ),
                    onPressed: () {},
                  )),
            ),
            SizedBox(
              height: 70,
            ),
            CustomButton(
                btnColor: Colors.blue,
                text: 'Invite Friends',
                width: 200,
                height: 60,
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
