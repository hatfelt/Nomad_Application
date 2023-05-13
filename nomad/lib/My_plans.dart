import 'package:flutter/material.dart';

class MyPlans extends StatefulWidget {
  const MyPlans({Key? key}) : super(key: key);

  @override
  State<MyPlans> createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA57D5A),
        centerTitle: true,
        title: Text(
          'My Plans',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      // offset: Offset(0,
                      //     3), // changes position of shadow
                    ),
                  ]),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Image.asset(
                            'assets/plan.png',
                            height: 35,
                            width: 35,
                          )),
                      Expanded(
                          flex: 6,
                          child: Text(
                            'My Plan 1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Image.asset(
                              'assets/forward.png',
                              height: 20,
                              width: 20,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown,
                      spreadRadius: 3,
                      blurRadius: 3,
                      // offset: Offset(0,
                      //     3), // changes position of shadow
                    ),
                  ]),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.brown,
                        child: Icon(
                          Icons.add,
                          size: 25.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
