
import 'dart:io';
import 'package:appmm/auth_controller.dart';
import 'package:appmm/ui/home_screen.dart';
import 'package:appmm/ui/login_screen.dart';
import 'package:appmm/ui/welcome_screen.dart';
import 'package:appmm/widget/navbar_root.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:firebase_database/firebase_database.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCHJl5Nr4BXjxI3TgkdZ8SXPsfRuPGCPqs",
            appId: "1:827638135527:android:1667b5f546dfb136a8c042",
            messagingSenderId: "827638135527",
            projectId: "appm-5c863"
        ),
      )
  :await Firebase.initializeApp();
  // await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
  runApp(MyApp());
}
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fultter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );

  }
}



