// import 'package:shared_preferences/shared_preferences.dart';
//
// class Preference {
//   static const String keyAccessToken = "ResultAccessToken";
//
//   Future<String> getAccessToken() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String value = prefs.getString(keyAccessToken) ?? "";
//     return value;
//   }
//
//   Future<void> setAccessToken(String value) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString(keyAccessToken, value);
//   }
// }
