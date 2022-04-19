import 'package:flutter/material.dart';
import 'screens/PantallaInicio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/authentication.dart';
import './widgets/firebase_central.dart';
import 'package:loggy/loggy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _init = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'inmedic beta',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: PantallaInicio(),
        home: Scaffold(
            body: FutureBuilder(
                future: _init,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Wrong();
                  }

                  if (snapshot.connectionState == ConnectionState.done) {
                    // crear los controladores

                    Get.put(AuthenticationController());
                    return const FirebaseCentral();
                  }

                  return const Loading();
                })));
  }
}

class Wrong extends StatelessWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Error"));
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PantallaInicio();
  }
}
