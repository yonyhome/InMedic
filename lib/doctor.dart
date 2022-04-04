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
      IconButton(icon: Icon(Icons.arrow_left), onPressed: () {}),
      Column(
        children: <Widget>[
          Text(
            "Doctor Nombre Apellido",
            textAlign: TextAlign.center,
          ),
          Text(
            "Especialización ",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      IconButton(icon: Icon(Icons.menu), onPressed: () {}),
    ],
  );
}

contacto(Size size, BuildContext context) {
  return Column(
    children: <Widget>[
      Image.asset(
        "img/doctor1.png",
        width: 200,
        height: 200,
      ),
      Row(
        children: [
          IconButton(icon: Icon(Icons.phone), onPressed: () {}),
        ],
      )
    ],
  );
}

bio(Size size, BuildContext context) {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sobre Nombre Apedillo...",
            textAlign: TextAlign.left,
          ),
          Image.asset(
            "img/estrella.png",
            width: 15,
            height: 15,
          ),
          Text("4.5"),
          Text("| 100 reviews"),
        ],
      ),
      Text(
          "Esta es una pequeña biografía donde se muestra información del doctor en cuestión.")
    ],
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
      Column(
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
                "img/doctor1.png",
                width: 120,
                height: 120,
              ),
              Text("Aquí va el resumen del articulo.")
            ],
          )
        ],
      )
    ],
  );
}
