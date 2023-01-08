import 'package:checklist/models/colors.dart';

import 'package:checklist/screens/sign_in.dart';
import 'package:checklist/widgets/navigate.dart';

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: dg,
            ),
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                    radius: 40,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Sarah Martins',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24, color: w),
                  ),
                  Text(
                    'SarahMartz565@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14, color: w),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.today_outlined,
              color: Colors.purple,
              size: 25,
            ),
            title: const Text(
              'Today',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.yellow,
              size: 25,
            ),
            title: const Text(
              'Setting',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
              leading: const Icon(
                Icons.calendar_month_sharp,
                color: Colors.blue,
                size: 25,
              ),
              title: const Text(
                'Calender',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {}),
          Padding(
              padding: const EdgeInsets.only(left: 15, top: 250, right: 170),
              child: TextButton(
                  onPressed: () {
                    navigateAndFinish(context, const SignIn());
                  },
                  child: const Text(
                    'LOG OUT',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ))),
        ],
      ),
    );
  }
}
