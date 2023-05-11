import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_login/provider/loginProvider.dart';
import 'package:registration_login/view/createScreen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => CreateScreen()},
      ),
    ),
  ));
}
