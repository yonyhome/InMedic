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
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "img/casa.png",
                  width: 40,
                  height: 40,
                ),
              ),
              onTap: () {
                print("Home");
              },
            ),
            GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "img/search.png",
                  width: 45,
                  height: 45,
                ),
              ),
              onTap: () {
                print("Search");
              },
            ),
            GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
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
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "img/chat.png",
                  width: 45,
                  height: 45,
                ),
              ),
              onTap: () {
                print("chat");
              },
            ),
            GestureDetector(
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "img/user.png",
                  width: 40,
                  height: 40,
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
