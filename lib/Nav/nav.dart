// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_dgb/screens/home_screen.dart';
import 'package:project_dgb/screens/menu_screen.dart';
import 'package:project_dgb/screens/notifition_screen.dart';
import 'package:project_dgb/screens/reset_password.dart';
import 'package:project_dgb/screens/screen_signin.dart';
import 'package:project_dgb/screens/signin_screen.dart';
import 'package:project_dgb/screens/signup_screen.dart';
import 'package:project_dgb/screens/store_screen.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> with SingleTickerProviderStateMixin {

  String title = 'BottomNavigationBar';

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          MenuScreen(),
          StoreScreen(),
          NotificationScreen(),
          ScreenSignin(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(
              0.0,
            )),
            child: Container(
              color: Colors.grey[100],
              child: TabBar(
                labelColor: Colors.blueAccent,
                unselectedLabelColor: Colors.grey[500],
                labelStyle: TextStyle(fontFamily: 'NotoLao', fontWeight: FontWeight.bold),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Colors.black54,
                    width: 0.0,
                  ),
                ),
                indicatorColor: Colors.black54,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.home,
                      size: 24.0,
                    ),
                    text: 'ໜ້າຫຼັກ',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.storefront,
                      size: 24.0,
                    ),
                    text: 'ຮ້ານຄ້າ',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.notifications_active,
                      size: 24.0,
                    ),
                    text: 'ແຈ້ງເຕຶອນ',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.account_circle,
                      size: 24.0,
                    ),
                    text: 'ສະມາຊິກ',
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
