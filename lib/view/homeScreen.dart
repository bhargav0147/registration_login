import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(25,-0.7),
            child: Container(
              height: 400,
              width: 400,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.blue.shade900),
            ),
          ),
          Align(
            alignment: Alignment(1,-1),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue.shade700),
            ),
          ),
          Align(
            alignment: Alignment(1.5,-1.5),
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue),
            ),
          ),
          Align(
            alignment: Alignment(-0.7,-0.3),
            child: Container(
              height: 170,
              width: 170,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Center(child: FlutterLogo(size: 100)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'sp',
                          color: Colors.blue.shade900),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "back",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 30,
                          fontFamily: 'sp',
                          color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    height: 55,width: 350,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade900,
                            Colors.blue.shade700,
                            Colors.blue,
                          ],
                        )
                    ),
                    child: Center(
                      child: Text(
                        "Login as Maria",
                        style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 25,
                            fontFamily: 'sp',
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    "Delete account",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 20,
                        fontFamily: 'sp',
                        decoration: TextDecoration.underline,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
