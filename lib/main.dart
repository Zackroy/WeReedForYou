import 'package:flutter/material.dart';
import 'package:videocall/home.dart';
import 'package:videocall/login.dart';
import 'package:videocall/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:videocall/controller/authcontroller.dart';
import 'package:get/get.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value){
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyLogin()
    );
  }
}
