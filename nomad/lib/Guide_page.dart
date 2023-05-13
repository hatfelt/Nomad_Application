import 'package:flutter/material.dart';
import 'package:guide/My_plans.dart';
import 'package:nb_utils/nb_utils.dart';

class Guide_page extends StatefulWidget {
  const Guide_page({Key? key}) : super(key: key);

  @override
  State<Guide_page> createState() => _Guide_pageState();
}

class _Guide_pageState extends State<Guide_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 250,
              width: 250,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: AppButton(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 45),
                    shapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Recommender",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFAF6F6),
                          fontSize: 20),
                    ),
                    color: Color(0xffA57D5A),
                    onTap: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: AppButton(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 45),
                    shapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Package Plans",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFAF6F6),
                          fontSize: 20),
                    ),
                    color: Color(0xffA57D5A),
    onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => MyPlans()));}
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: AppButton(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 45),
                    shapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "My Plans",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFAF6F6),
                          fontSize: 20),
                    ),
                    color: Color(0xffA57D5A),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyPlans()));
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
