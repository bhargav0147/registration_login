import 'dart:math';

import 'package:registration_login/modal/loginModal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareP
{
  Future<void> getInfo({required String email, required String pass,required bool login})
  async {
    SharedPreferences preferences =await SharedPreferences.getInstance();
    preferences.setString("Email", email);
    preferences.setString("Pass", pass);
    preferences.setBool("login", login);
  }

  Future<LoginModal> printInfo()
  async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    String? email = preferences.getString("Email");
    String? pass = preferences.getString("Pass");
    bool? login = preferences.getBool("login");

    LoginModal save=LoginModal(login: login,email: email,password: pass);
    return save;
  }
}