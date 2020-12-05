import 'package:cara_ou_coroa/pages/res.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ram() {
    Random random = new Random();
    int nun = random.nextInt(2);
    return nun;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4DD0E1),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/cara.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CARA",
                        style: TextStyle(
                            fontFamily: 'Jua',
                            fontSize: 45,
                            color: Colors.white),
                      ),
                      Text(
                        "OU",
                        style: TextStyle(
                            fontFamily: 'Jua',
                            fontSize: 45,
                            color: Colors.white),
                      ),
                      Text(
                        "COROA",
                        style: TextStyle(
                            fontFamily: 'Jua',
                            fontSize: 45,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/coroa.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResPage(ram())));
                  },
                  child: Text(
                    'JOGAR',
                    style: TextStyle(
                        fontFamily: 'Jua',
                        fontSize: 35,
                        color: Color(0xff4DD0E1)),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
