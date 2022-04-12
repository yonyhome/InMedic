import 'package:flutter/material.dart';
import 'package:inmedic/main.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            encabezado(size, context),
            fotodoctor(size, context),
            buttonsllamada(size, context),
          ],
        ),
      ),
    );
  }
}

encabezado(Size size, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    //mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "Dr. Jimmy Newton",
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ],
  );
}

fotodoctor(Size size, BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Center(
        child: Image.asset(
          "assets/img/fondo_calls.jpeg",
          width: MediaQuery.of(context).size.width,
          height: 600,
        ),
      ),
    ],
  );
}

buttonsllamada(Size size, BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      GestureDetector(
        child: new Container(
          child: Image.asset(
            "assets/img/fin-removebg-preview.jpeg",
            width: 25,
            height: 25,
          ),
        ),
        onTap: () {
          print("Home");
        },
      ),
    ],
  );
}
