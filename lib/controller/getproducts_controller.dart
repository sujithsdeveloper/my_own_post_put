import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_own_post_put/api/apis.dart';
import 'package:my_own_post_put/stringconstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetproductsController extends ChangeNotifier {
  Future<void> getproducts() async {
    final ref = await SharedPreferences.getInstance();
    final token = ref.getString(Stringconstants.accesstoken);

    try {
      var response = await http.get(Apis.getAllProductsUrl, headers: {
        'Authorization': 'application/json',
        'header': 'Bearer $token'
      });
      if (response.statusCode == 200) {
        log(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
