import 'package:flutter/material.dart';
import '../screens/location_service.dart';

service(context, String nombre, String url) {
  return Container(
      color: const Color(0xFF00AFC1),
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width / 4,
      child: GestureDetector(
          onTap: () => getPlaceId(nombre),
          child: Column(children: <Widget>[
            Expanded(
                child: Column(children: <Widget>[
              Image.asset(
                url,
                width: 90,
                height: 90,
              ),
              Text(
                nombre,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF006d77),
                  fontSize: 10,
                ),
              ),
            ])),
          ])));
}
