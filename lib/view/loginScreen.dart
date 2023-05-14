import 'package:flutter/material.dart';
import 'package:registration_login/modal/loginModal.dart';
import 'package:registration_login/utils/sharedPreference.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtokEmail=TextEditingController();
  TextEditingController txtokPass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(1.5, -1.4),
            child: Container(
              height: 300,
              width: 300,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            ),
          ),
          Align(
            alignment: Alignment(-2, -1.3),
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue.shade700),
            ),
          ),
          Align(
            alignment: Alignment(-2, -1.25),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue.shade900),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.6),
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
                  TextField(
                    controller: txtokEmail,
                    style: TextStyle(fontSize: 25),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person,color: Colors.blue,size: 30,),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        label: Text(
                          "Email",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'sp',
                              color: Colors.blue.shade900),
                        )),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: txtokPass,
                    style: TextStyle(fontSize: 25),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock,color: Colors.blue,size: 30,),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        label: Text(
                          "Password",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontFamily: 'sp',
                              color: Colors.blue.shade900),
                        )),
                  ),
                  SizedBox(height: 60),
                  InkWell(
                    onTap: () async {
                      ShareP share = ShareP();
                      LoginModal l1=await share.printInfo();
                      if(l1.email==txtokEmail.text && l1.password==txtokPass)
                        {
                          Navigator.pushReplacementNamed(context, 'welcome');
                        }
                      else
                        {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Email & Password, Please Try Again")));
                        }
                    },
                    child: Container(
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
                          "Sign in",
                          style: TextStyle(
                              letterSpacing: 2,
                              fontSize: 25,
                              fontFamily: 'sp',
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 150),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account? ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 20,
                            fontFamily: 'sp',
                            color: Colors.black
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'creat');
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 20,
                              fontFamily: 'sp',
                              color: Colors.blue,
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
