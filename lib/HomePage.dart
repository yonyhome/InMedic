// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'barra.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            foco(size, context),
            servicios(size, context),
            topdoctors(size, context),
            BarNavigetor(),
            // BarNavigetor(),
          ],
        ),
      ),
    );
  }
}

topdoctors(Size size, BuildContext context) {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "Top Doctors",
            textAlign: TextAlign.left,
            style: TextStyle(color: const Color(0xFF006d77)),
          ),
          Text(
            "See all",
            textAlign: TextAlign.left,
            style: TextStyle(color: const Color(0xFF0032777)),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "img/doctor1.png",
            width: 120,
            height: 120,
          ),
          Column(
            children: <Widget>[
              Text(
                "Dr. JimmY Newton",
                textAlign: TextAlign.left,
                style: TextStyle(color: const Color(0xFF0032777)),
              ),
              Text(
                "Odontologo",
                textAlign: TextAlign.left,
                style: TextStyle(color: const Color(0xFF0032777)),
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    "img/estrella.png",
                    width: 15,
                    height: 15,
                  ),
                  Text(
                    "4.9 (280 reviews)",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: const Color(0xFF0032777)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      /////////////////////////////////////
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "img/doctor2.png",
            width: 120,
            height: 120,
          ),
          Column(
            children: <Widget>[
              Text(
                "Dr. Juan Baldonado",
                textAlign: TextAlign.left,
                style: TextStyle(color: const Color(0xFF0032777)),
              ),
              Text(
                "Cardiologo",
                textAlign: TextAlign.left,
                style: TextStyle(color: const Color(0xFF0032777)),
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    "img/estrella.png",
                    width: 15,
                    height: 15,
                  ),
                  Text(
                    "4.2 (360 reviews)",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: const Color(0xFF0032777)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ],
  );
}

servicios(Size size, BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Servicios",
        textAlign: TextAlign.left,
        style: TextStyle(color: const Color(0xFF006d77)),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              GestureDetector(
                child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        )
                      ]),
                  child: Image.asset(
                    "img/diente.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                onTap: () {
                  print("odontologia");
                },
              ),
              Text(
                "Odontologia",
                textAlign: TextAlign.center,
                style: TextStyle(color: const Color(0xFF006d77)),
              ),
            ],
          ),

          ////////////////////////////////////////////////////////////////
          Column(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      )
                    ]),
                child: Image.asset(
                  "img/corazon.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Text(
                "Cardiologia",
                textAlign: TextAlign.center,
                style: TextStyle(color: const Color(0xFF006d77)),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      )
                    ]),
                child: Image.asset(
                  "img/drug.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Text(
                "Drogueria",
                textAlign: TextAlign.center,
                style: TextStyle(color: const Color(0xFF006d77)),
              ),
            ],
          ),
        ],
      )
    ],
  );
}

foco(Size size, BuildContext context) {
  Color c = const Color(0xFF006d77);
  Color cc = const Color(0xFF0032777);
  return Container(
    padding: const EdgeInsets.all(20),
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    height: 200,
    // ignore: unnecessary_new
    decoration: new BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 8, 8, 8),
            blurRadius: 15,
            offset: Offset(0, 5),
          )
        ]),
    child: Row(
      children: <Widget>[
        Column(children: <Widget>[
          Text(
            "¿Ya completaste tu\n\n"
            "esquema de vacunacion\n\n"
            "contra el Covid 19?\n\n",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            color: Colors.white,
            child: Container(
              child: const Text(
                'Centros de Vacunacion',
                style: TextStyle(color: const Color(0xFF006d77)),
              ),
            ),
            onPressed: () {
              //Navigator.pushReplacementNamed(context, 'home');
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
          )
        ]),
        Image.asset(
          "img/covid.JPG",
          width: 135,
          height: 120,
        ),
      ],
    ),
  );
}

encabezado(Size size, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        children: <Widget>[
          Text(
            "Hola @UserName",
            textAlign: TextAlign.left,
          ),
          Text(
            "Como te sientes el dia de hoy? ",
            textAlign: TextAlign.left,
          ),
        ],
      ),
      Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.contact_phone_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications_active), onPressed: () {}),
          IconButton(icon: Icon(Icons.wechat_rounded), onPressed: () {}),
        ],
      ),
    ],
  );
}
