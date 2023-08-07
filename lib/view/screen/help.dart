import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled1/controller/help_Controller.dart';
import 'package:untitled1/core/functions/answer_dialog.dart';
import 'package:untitled1/data/model/common/navigation_drawer.dart';
import 'package:untitled1/view/widget/custom_answer_widget.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    HelpController helpController = Get.put(HelpController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        centerTitle: true,
      ),
      drawer: CustomNavigationDrawer(),
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 2),
                        color: Colors.black38,
                        blurRadius: 3)
                  ]),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Ask me',
                    contentPadding: EdgeInsets.only(
                      top: 35,
                    ),
                    hintStyle: TextStyle(fontSize: 22),
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 26,
                      ),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'FAQs',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CustomAnswerWidget(
                        onTap: () {
                          answerDialog(helpController.FAQs[index],
                              helpController.answer[index], context);
                        },
                        q: helpController.FAQs[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                      height: 30,
                      color: Colors.black38,
                    );
                  },
                  itemCount: helpController.FAQs.length),
            ),
            SizedBox(
              height: 59,
            ),
            InkWell(
              onTap: () {
                helpController.goToLiveChatPage();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 2),
                        blurRadius: 2)
                  ],
                  border: Border.all(color: Colors.black38, width: 2),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.message),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Live Chat',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
