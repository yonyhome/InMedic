import 'package:flutter/material.dart';
import 'login.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({Key? key}) : super(key: key);

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  Color c = const Color(0xFF006d77);
  Color cc = const Color(0xFF0032777);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c,
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    "assets/img/logo.gif",
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                ),
                RaisedButton(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(13.0),
                  color: cc,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
