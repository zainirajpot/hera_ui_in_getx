import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_ui_in_getx/Hera_Splash_Page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hera UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: const HeraUi(),
    // home: HeraLoginPage(),
      // home:const HeraEmilsPage(),
    //  home: SignUpPage(),
  //  home:const HeraLockPage(),
    );
  }
}
