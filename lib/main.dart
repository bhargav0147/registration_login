import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_login/provider/loginProvider.dart';
import 'package:registration_login/view/createScreen.dart';
import 'package:registration_login/view/homeScreen.dart';
import 'package:registration_login/view/loginScreen.dart';
import 'package:registration_login/view/splashScreen.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => LoginProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        'creat': (context) => CreateScreen(),
        'login': (context) => LoginScreen(),
        'welcome': (context) => HomeScreen(),
      },
    ),
  ));
}
