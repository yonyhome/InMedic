// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import '../widgets/barra.dart';

import '../widgets/appbar.dart';
import '../widgets/bestdoctors.dart';
import '../widgets/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: encabezado(),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            foco(size, context),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "Servicios",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color(0xFF006d77),
                  fontSize: 15,
                ),
              )
            ]),
            Expanded(
              flex: 2,
              child: servicios(size, context),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("TOP-Doctores"),
                  Text("Ver Todos"),
                ]),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: topdoctors(),
                ),
              ),
            ),
            BarNavigetor(),
          ],
        ));
  }

  topdoctors() {
    return new Column(children: [
      besdoctor("Juan Camilo zuluaga", "Otorrino", "assets/img/doctor1.png",
          "4.9 (280 review)"),
      besdoctor("Tomas Carrasquilla", "Medico general",
          "assets/img/doctor2.png", "4.7 (230 review)"),
      besdoctor("Nicolas Maquiavelo", "Omeopata", "assets/img/doctor1.png",
          "4.5 (260 review)"),
    ]);
  }

  servicios(Size size, BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new CustomScrollView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              slivers: <Widget>[
                new SliverPadding(
                  padding: const EdgeInsets.all(20.0),
                  sliver: new SliverList(
                    delegate: new SliverChildListDelegate(
                      <Widget>[
                        service(
                            context, "Odontologia", "assets/img/diente.png"),
                        service(
                            context, "Cardiologia", "assets/img/corazon.png"),
                        service(context, "Drogueria", "assets/img/drug.png"),
                        service(
                            context, "Ambulancia", "assets/img/ambulance.png"),
                        service(context, "Laboratorio",
                            "assets/img/microscope.png"),
                        service(
                            context, "Optometria", "assets/img/optometria.png"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  foco(Size size, BuildContext context) {
    Color c = const Color(0xFF006d77);
    Color cc = const Color(0xFF0032777);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: size.height * 0.25,
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
      child: Row(children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
                flex: 3, //increase to fill more space of picture
                child: FittedBox(
                  fit: BoxFit
                      .fill, // the picture will acquire all of the parent space.
                  child: Text(
                    "¿Ya completaste tu\n\n"
                    "esquema de vacunacion\n\n"
                    "contra el Covid 19?\n\n",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Expanded(
              flex: 1,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
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
              ),
            ),
          ],
        ),
        Expanded(
          flex: 1, //increase to fill more space of picture
          child: Image.asset("assets/img/covid.jpg"),
        ),
      ]),
    );
  }
}
