import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCircleDetails extends StatelessWidget {
  const CustomCircleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        height: 400,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                  offset: Offset(2, 2), blurRadius: 4, color: Colors.black45),
              BoxShadow(
                  offset: Offset(-2, 0), blurRadius: 3, color: Colors.black45),
            ]),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Circle #1234',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            CustomListTile(
              title: 'Start Date',
              icon: Icons.calendar_month_outlined,
              val: 'DD/MM/YY',
            ),
            CustomListTile(
              title: 'End Date',
              icon: Icons.calendar_month_outlined,
              val: 'DD/MM/YY',
            ),
            CustomListTile(
              title: 'Circle Duration',
              icon: Icons.access_time_rounded,
              val: '10 month',
            ),
            CustomListTile(
              title: 'Number of Members',
              icon: Icons.group,
              val: '10',
            ),
            CustomListTile(
              title: 'Received Date',
              icon: Icons.calendar_month_outlined,
              val: 'DD/MM/YY',
            ),
            CustomListTile(
              title: 'Monthly Payment',
              icon: Icons.currency_exchange_outlined,
              val: '200',
            ),
            CustomListTile(
              title: 'total',
              icon: Icons.currency_exchange_outlined,
              val: '2000',
            ),
          ],
        ));
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String val;
  const CustomListTile(
      {required this.icon, required this.title, required this.val});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            size: 25,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            val,
            style: TextStyle(fontSize: 19),
          ),
        ),
        Divider(
          color: Colors.black38,
          thickness: 1.4,
        )
      ],
    );
  }
}
