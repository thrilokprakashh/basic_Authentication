import 'package:shared_preferences/shared_preferences.dart';

class DatabaseController {
  static late final SharedPreferences prefs;
  static String? storedEmail;
  static String? storedPassword;

  static initsharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future register(String email, String password) async {
    await prefs.setString("email", email);
    await prefs.setString("pass", password);
  }

  static Getdata() async {
    storedEmail = prefs.getString('email');
    storedPassword = prefs.getString('pass');
  }
}
