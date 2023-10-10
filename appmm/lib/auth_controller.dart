import 'dart:ui';
import 'package:appmm/ui/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:appmm/ui/home_screen.dart';
import 'package:appmm/ui/welcome_screen.dart';
import 'package:appmm/widget/navbar_root.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class AuthController extends GetxController{
  // Authcontroller instance
  static AuthController instance = Get.find();
  //email, password, name..
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be noti
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }
  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>LoginScreen());
    }else{
      Get.offAll(()=>WelcomeScreen(email:user.email!));
    }
  }
  // void register(String email, password)async{
  //   try{
  //     await auth.createUserWithEmailAndPassword(email: email, password: password);
  //   }catch(e){
  //     Get.snackbar("About User", "User message",
  //     backgroundColor: Colors.redAccent,
  //     snackPosition: SnackPosition.BOTTOM,
  //       titleText: Text(
  //         "Account creation failed",
  //         style: TextStyle(
  //           color: Colors.white
  //         ),
  //       ),
  //       messageText: Text(
  //         e.toString(),
  //         style: TextStyle(
  //           color: Colors.white
  //         ),
  //       ),
  //     );
  //   }
  //
  // }
  void login(String email, password) async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Login failed",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
              color: Colors.white
          ),
        ),
      );
    }

  }
  void logOut()async{
    await auth.signOut();
  }


}