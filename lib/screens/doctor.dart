import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Calls.dart';

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
            contacto(size, context),
            bio(size, context),
            articulo(size, context),
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
      IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
          }),
      Column(
        children: <Widget>[
          Text(
            "Doctor Nombre Apellido",
            textAlign: TextAlign.center,
            style: TextStyle(color: const Color(0xFF0032777)),
          ),
          Text(
            "Especialización",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(210, 7, 207, 174)),
          ),
        ],
      ),
      IconButton(icon: Icon(Icons.menu), onPressed: () {}),
    ],
  );
}

contacto(Size size, BuildContext context) {
  return Container(
      margin: const EdgeInsets.only(left: 120, right: 120),
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/img/doctor1.png",
            width: 200,
            height: 200,
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Calls(),
                    ));
                  })
            ],
          )
        ],
      ));
}

bio(Size size, BuildContext context) {
  return Container(
    color: Color.fromARGB(237, 193, 240, 232),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sobre Nombre Apedillo...",
              textAlign: TextAlign.left,
              style: TextStyle(color: const Color(0xFF0032777)),
            ),
            Image.asset(
              "assets/img/estrella.png",
              width: 15,
              height: 15,
            ),
            Text(
              "4.5",
              style: TextStyle(color: const Color(0xFF0032777)),
            ),
            Text("| 100 reviews"),
          ],
        ),
        Text(
            "Esta es una pequeña biografía donde se muestra información del doctor en cuestión.")
      ],
    ),
  );
}

articulo(Size size, BuildContext context) {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Articulos"),
          Text("Ver todos"),
        ],
      ),
      Container(
          color: Color.fromARGB(236, 4, 129, 113),
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nombre de Articulo"),
                  Text("4.9"),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/img/doctor1.png",
                    width: 120,
                    height: 120,
                  ),
                  Flexible(child: Text("Aquí va el resumen del articulo."))
                ],
              )
            ],
          ))
    ],
  );
}
