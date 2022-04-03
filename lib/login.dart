import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Color c = const Color(0xFF006d77);
    return Scaffold(
      backgroundColor: c,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [cajapurpura(size, context), loginform(context)],
        ),
      ),
    );
  }

  Container cajapurpura(Size size, BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height / 2,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "img/fondo_login.JPEG",
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
              ),
            ],
          )
        ],
      ),
    );
  }

  SingleChildScrollView loginform(BuildContext context) {
    Color cc = const Color(0xFF003277);
    Color c = const Color(0xFF006d77);

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              // height: 350,
              decoration: BoxDecoration(
                  color: cc,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0, 5),
                    )
                  ]),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text('Login', style: Theme.of(context).textTheme.headline4),
                  const SizedBox(height: 30),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          //decoration: InputDecorations.inputDecoration(
                          //hintext: 'ejemplo@hotmail.com',
                          //labeltext: 'Correo electronico',
                          //icono: const Icon(Icons.alternate_email_rounded)),
                          validator: (value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regExp = new RegExp(pattern);
                            return regExp.hasMatch(value ?? '')
                                ? null
                                : 'El valor ingresado no es un correo';
                          },
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          //decoration: InputDecorations.inputDecoration(
                          //hintext: '******',
                          //labeltext: 'Contraseña',
                          //icono: const Icon(Icons.lock_outline)),
                          validator: (value) {
                            return (value != null && value.length >= 6)
                                ? null
                                : 'La contraseña debe ser mayor o igual a los 6 caracteres';
                          },
                        ),
                        const SizedBox(height: 30),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledColor: Colors.grey,
                          color: c,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            child: const Text(
                              'Ingresar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'home');
                          },
                        )
                      ],
                    ),
                  )
                ],
              )),
          const SizedBox(height: 50),
          const Text(
            'Crear una nueva cuenta',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
