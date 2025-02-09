import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_own_post_put/api/apis.dart';
import 'package:my_own_post_put/model/login_model.dart';
import 'package:my_own_post_put/stringconstants.dart';
import 'package:my_own_post_put/view/home_page/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationController extends ChangeNotifier {
  LogInResModel? logInRes;

  Future<void> onRegistration(
      {required String email,
      required String password,
      required BuildContext context}) async {
    final ref = await SharedPreferences.getInstance();

    try {
      var response = await http.post(Apis.registrationUrl,
          body: {"email": email, "password": password});
      if (response.statusCode == 200) {
        log(response.body);
        logInRes = logInResModelFromJson(response.body);
        ref.setString(Stringconstants.accesstoken, logInRes?.access ?? '');
        ref.setString(Stringconstants.refreshtoken, logInRes?.refresh ?? '');
        notifyListeners();
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      } else {
        log(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
