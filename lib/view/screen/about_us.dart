import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/app_image_asset.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
        ),
        drawer: CustomNavigationDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '''We are a \ncompany made \nup of a group of \nindividuals. We\n developed this \napplication to \nsolve the \nproblems of \ntraditional \ncircles.\nYou can join to \nany circle or get \nin touch to ask \nwhat you have in \nmind''',
                      style: TextStyle(fontSize: 25, height: 1.7),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      AppImageAsset.cherry,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
