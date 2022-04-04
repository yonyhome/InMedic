import 'package:flutter/material.dart';
import 'doctor.dart';
import 'PantallaInicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inmedic beta',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Doctor(),
    );
  }
}
