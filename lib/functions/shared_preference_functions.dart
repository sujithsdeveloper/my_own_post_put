import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceFunctions {
  Future<void> setCredentials(String email, String password) async {
    final preff = await SharedPreferences.getInstance();

    await preff.setString('email', email);
    await preff.setString('password', password);
  }

  Future<void> getCredentials() async {
    final preff1 = await SharedPreferences.getInstance();
    preff1.getString('email');
    preff1.getString('password');
  }
}
