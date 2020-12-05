import 'package:flutter/material.dart';

class ResPage extends StatefulWidget {
  int index;
  ResPage(this.index);
  @override
  _ResPageState createState() => _ResPageState();
}

class _ResPageState extends State<ResPage> {
  final images = [
    'assets/images/cara.png',
    'assets/images/coroa.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4DD0E1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset(
                  images[widget.index],
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'VOLTAR',
                      style: TextStyle(
                          fontFamily: 'Jua',
                          fontSize: 35,
                          color: Color(0xff4DD0E1)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
