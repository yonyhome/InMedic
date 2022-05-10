// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:inmedic/screens/HomePage.dart';
import '../screens/mapPage.dart';
import '../screens/HomePage.dart';
import '../screens/doctor.dart';
import '../screens/location_service.dart';

class BarNavigetor extends StatefulWidget {
  const BarNavigetor({Key? key}) : super(key: key);

  @override
  State<BarNavigetor> createState() => _BarNavigetorState();
}

class _BarNavigetorState extends State<BarNavigetor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            GestureDetector(
              child: new Container(
                child: Image.asset(
                  "assets/img/casa.png",
                  width: 25,
                  height: 25,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            GestureDetector(
              child: new Container(
                child: Image.asset(
                  "assets/img/search.png",
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => mapPage()));
              },
            ),
            GestureDetector(
              child: new Container(
                child: Image.asset(
                  "assets/img/centro.png",
                  width: 60,
                  height: 60,
                ),
              ),
              onTap: () {
                print("centro");
              },
            ),
            GestureDetector(
              child: new Container(
                child: Image.asset(
                  "assets/img/chat.png",
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                print("chat");
              },
            ),
            GestureDetector(
              child: new Container(
                child: Image.asset(
                  "assets/img/user.png",
                  width: 25,
                  height: 25,
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}
