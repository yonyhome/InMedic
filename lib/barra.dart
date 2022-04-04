// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

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
                  "img/casa.png",
                  width: 25,
                  height: 25,
                ),
              ),
              onTap: () {
                print("Home");
              },
            ),
            GestureDetector(
              child: new Container(
                child: Image.asset(
                  "img/search.png",
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                print("Search");
              },
            ),
            GestureDetector(
              child: new Container(
                child: Image.asset(
                  "img/centro.png",
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
                  "img/chat.png",
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
                  "img/user.png",
                  width: 25,
                  height: 25,
                ),
              ),
              onTap: () {
                print("User");
              },
            )
          ],
        ),
      ],
    );
  }
}
