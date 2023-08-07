import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled1/controller/account_conmtroller.dart';
import 'package:untitled1/core/functions/valid_input.dart';
import 'package:untitled1/view/widget/custom_account_widget.dart';
import 'package:untitled1/view/widget/custom_btn.dart';
import 'package:untitled1/view/widget/custom_text_form_edit_account.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    AccountController accountController = Get.put(AccountController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: StreamBuilder(
            stream: accountController.getUserInfo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Form(
                  key: accountController.formState,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            NetworkImage(snapshot.data.docs[0].data()['image']),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        snapshot.data.docs[0].data()['name'],
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '+972 ${snapshot.data.docs[0].data()['phone']}',
                        style: const TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CustomAccountWidget(
                          title: 'User Name', firstIcon: Icons.person),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextFormEditAccount(
                        txt: snapshot.data.docs[0].data()['name'],
                        onChanged: (value) {
                          accountController.name = value;
                          accountController.statusButton();
                        },
                        valid: (value) {
                          return validInput(value, 'username', 10, 30);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomAccountWidget(
                          title: 'Phone Number', firstIcon: Icons.phone),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              initialValue: '+972',
                              readOnly: true,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              flex: 3,
                              child: CustomTextFormEditAccount(
                                txt:
                                    '+972 ${snapshot.data.docs[0].data()['phone']}',
                                onChanged: (value) {
                                  accountController.phone = value;
                                  accountController.statusButton();
                                },
                                valid: (value) {
                                  return validInput(value, 'phone', 15, 15);
                                },
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomAccountWidget(
                          title: 'Email', firstIcon: Icons.email),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextFormEditAccount(
                        txt: snapshot.data.docs[0].data()['email'],
                        onChanged: (value) {
                          accountController.email = value;
                          accountController.statusButton();
                        },
                        valid: (value) {
                          return validInput(value, 'email', 10, 30);
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GetBuilder<AccountController>(
                          builder: (AccountController accountController) {
                        return CustomButton(
                            text: 'Save',
                            width: 140,
                            height: 60,
                            onTap: () {
                              accountController.editInfo(context);
                            },
                            btnColor: accountController.buttonColor);
                      })
                    ],
                  ),
                );
              } else if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const Text('not fount data');
              }
            },
          ),
        ),
      ),
    );
  }
}
