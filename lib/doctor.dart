import 'package:flutter/material.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _Doctor();
}

class _Doctor extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            encabezado(size, context),
            // contacto(size, context),
            // bio(size, context),
            // articulo(size, context),
          ],
        ),
      ),
    );
  }
}

encabezado(Size size, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(icon: Icon(Icons.arrow_left), onPressed: () {}),
      Column(
        children: <Widget>[
          Text(
            "Doctor Name Last Name",
            textAlign: TextAlign.center,
          ),
          Text(
            "Specialist ",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      IconButton(icon: Icon(Icons.menu), onPressed: () {}),
    ],
  );
}

contacto(Size size, BuildContext context) {}

bio(Size size, BuildContext context) {}

articulo(Size size, BuildContext context) {}
