import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:get/get.dart';
import '../widgets/authentication.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  String email = "";
  String pass = "";

  AuthenticationController authenticationController = Get.find();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Color c = const Color(0xFF006d77);
    return Scaffold(
      backgroundColor: c,
      body: Stack(
        children: [encabezado(size, context), loginform(context)],
      ),
    );
  }

  SizedBox encabezado(Size size, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.4,
      child: Image.asset(
        "assets/img/fondo_login.jpeg",
        width: MediaQuery.of(context).size.width,
        height: 600,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
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
                          onChanged: (value) {
                            email = value;
                          },
                          autocorrect: false,
                          decoration: new InputDecoration(
                            hintText: 'ejemplo@hotmail.com',
                            labelText: 'Correo electronico',
                            icon: const Icon(Icons.alternate_email_rounded),
                          ),
                          style: TextStyle(color: Colors.white),
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
                          onChanged: (value) {
                            pass = value;
                          },
                          autocorrect: false,
                          obscureText: true,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: '******',
                            labelText: 'Contraseña',
                            icon: const Icon(Icons.lock_outline),
                          ),
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
                            //Navigator.pushReplacementNamed(context, 'home');
                            print(email);
                            print(pass);
                            authenticationController.login(email, pass);
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
