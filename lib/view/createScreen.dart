import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_login/provider/loginProvider.dart';
import 'package:registration_login/utils/sharedPreference.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  LoginProvider? providerFalse;
  LoginProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<LoginProvider>(context, listen: false);
    providerTrue = Provider.of<LoginProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Stack(
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
                    Text(
                      "Create",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'sp',
                          color: Colors.blue.shade900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "account",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 30,
                          fontFamily: 'sp',
                          color: Colors.blue),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: providerFalse!.txtEmail,
                      style: TextStyle(fontSize: 25),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.blue,
                            size: 30,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          label: Text(
                            "E-mail",
                            style: TextStyle(
                                letterSpacing: 1,
                                fontFamily: 'sp',
                                color: Colors.blue.shade900),
                          )),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: providerFalse!.txtPass,
                      style: TextStyle(fontSize: 25),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                            size: 30,
                          ),
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
                      onTap: () {
                        var Email = providerFalse!.txtEmail.text;
                        var Pass = providerFalse!.txtPass.text;
                        ShareP share = ShareP();
                        share.getInfo(email: Email, pass: Pass,login: true);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign Up Successfull",style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: 'sp',
                            color: Colors.white),)));
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 55,
                        width: 350,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade900,
                            Colors.blue.shade700,
                            Colors.blue,
                          ],
                        )),
                        child: Center(
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 25,
                                fontFamily: 'sp',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Alredy have account? ",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 20,
                              fontFamily: 'sp',
                              color: Colors.black),
                        ),
                        Text(
                          "Sign in",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 20,
                              fontFamily: 'sp',
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
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
      ),
    ));
  }
}
