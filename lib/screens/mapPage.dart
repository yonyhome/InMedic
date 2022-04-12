import 'package:flutter/material.dart';
import '../widgets/barra.dart';
import 'HomePage.dart';

class mapPage extends StatefulWidget {
  mapPage({Key? key}) : super(key: key);

  @override
  State<mapPage> createState() => _mapPageState();
}

class _mapPageState extends State<mapPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 252, 252, 1),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            encabezado(size, context),
            foco(size, context),
            BarNavigetor()
            // BarNavigetor(),
          ],
        ),
      ),
    );
  }
}

foco(Size size, BuildContext context) {
  Color c = const Color(0xFF006d77);
  Color cc = const Color(0xFF0032777);
  return Container(
    width: double.infinity,
    height: size.height - 100,
    child: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/img/gpsflutter.jpg",
                width: MediaQuery.of(context).size.width,
                height: 500,
              ),
            ),
          ],
        )
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
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              })
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
