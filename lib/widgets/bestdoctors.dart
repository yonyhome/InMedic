import 'package:flutter/material.dart';

besdoctor(String nombre, String profesion, String url, String score) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        url,
        width: 120,
        height: 120,
      ),
      Column(
        children: <Widget>[
          Text(
            nombre,
            textAlign: TextAlign.left,
            style: TextStyle(color: const Color(0xFF0032777)),
          ),
          Text(
            profesion,
            textAlign: TextAlign.left,
            style: TextStyle(color: const Color(0xFF0032777)),
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "assets/img/estrella.png",
                width: 15,
                height: 15,
              ),
              Text(
                score,
                textAlign: TextAlign.left,
                style: TextStyle(color: const Color(0xFF0032777)),
              ),
            ],
          )
        ],
      ),
    ],
  );
}
