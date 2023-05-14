import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier
{
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtPass=TextEditingController();
}