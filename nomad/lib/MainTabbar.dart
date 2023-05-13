// ignore_for_file: empty_statements

import 'dart:async';
import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:guide/Guide_page.dart';
import 'package:guide/Guide_page.dart';
import 'package:guide/My_plans.dart';
import 'package:nb_utils/nb_utils.dart';

class MainTabbar extends StatefulWidget {
  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Color(0xffA57D5A),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: new Text(
              "Exit Application",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            content: new Text(
              "Are You Sure?",
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              AppButton(
                shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: new Text(
                  "Yes",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  exit(0);
                },
              ),
              AppButton(
                shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: new Text(
                  "No",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    super.initState();
  }

  int _currentPageIndex = 0;

  List<Widget> _pages = [
    Guide_page(),
    Guide_page(),
    Guide_page(),
    MyPlans(),
  ];

  Widget _getCurrentPage() => _pages[_currentPageIndex];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            _getCurrentPage(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          index: _currentPageIndex,
          color: Color(0xffE5CDB1),
          height: 60,
          items: <Widget>[
            Icon(Icons.home, size: 25, color: Color(0xFF231F20)),
            Icon(Icons.search, size: 25, color: Color(0xFF231F20)),
            Icon(Icons.person, size: 25, color:Color(0xFF231F20)),
          ],
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.bounceInOut,
          onTap: (index) {
            setState(() {
              _currentPageIndex = index;
            });
            //Handle button tap
          },
        ),
      ),
    );
  }
}
