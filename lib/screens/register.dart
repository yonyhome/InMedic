import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/authentication.dart';

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Color c = const Color(0xFF006d77);
    return Scaffold(
      backgroundColor: c,
      body: Stack(
        children: [encabezado(size, context), registerform(context)],
      ),
    );
  }
}

SizedBox encabezado(Size size, BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: size.height * 0.4,
    child: Image.asset(
      "assets/img/logo.gif",
      width: MediaQuery.of(context).size.width,
      height: 600,
    ),
  );
}

SingleChildScrollView registerform(BuildContext context) {
  String email = "";
  String pass = "";
  String pass2 = "";
  AuthenticationController authenticationController = Get.find();
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
                Text('Registro', style: Theme.of(context).textTheme.headline4),
                const SizedBox(height: 30),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        autocorrect: false,
                        decoration: new InputDecoration(
                          hintText: 'Pepito Perez',
                          labelText: 'Nombre',
                          icon: const Icon(Icons.abc),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
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
                        style: TextStyle(color: Colors.black),
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
                      TextFormField(
                        onChanged: (value) {
                          pass2 = value;
                        },
                        autocorrect: false,
                        obscureText: true,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: '******',
                          labelText: 'Confirmar Contraseña',
                          icon: const Icon(Icons.lock_outline),
                        ),
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
                            'Registrarse',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          //Navigator.pushReplacementNamed(context, 'home');
                          print(email);
                          print(pass);
                          authenticationController.signup(email, pass);
                        },
                      )
                    ],
                  ),
                )
              ],
            )),
        const SizedBox(height: 50),
      ],
    ),
  );
}
