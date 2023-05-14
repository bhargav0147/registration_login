import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_login/modal/loginModal.dart';
import 'package:registration_login/provider/loginProvider.dart';
import 'package:registration_login/utils/sharedPreference.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() async {
    ShareP shareP = ShareP();
    LoginModal l1 = await shareP.printInfo();
    l1.login==true?Navigator.pushNamed(context, 'welcome'):Navigator.pushNamed(context, 'login');
    },);
    return const SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: FlutterLogo(size: 250,)),
    ));
  }
}
