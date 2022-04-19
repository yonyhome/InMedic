import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../widgets/authentication.dart';

AuthenticationController authenticationController = Get.find();
encabezado() {
  return AppBar(
    title: Text("Hola @user"),
    automaticallyImplyLeading: false,
    backgroundColor: const Color(0xFF006d77),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.contact_phone_rounded), onPressed: () {}),
      IconButton(icon: Icon(Icons.notifications_active), onPressed: () {}),
      IconButton(icon: Icon(Icons.wechat_rounded), onPressed: () {}),
      IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            authenticationController.logout();
          }),
    ],
  );
}
