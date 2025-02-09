import 'package:flutter/material.dart';
import 'package:my_own_post_put/controller/getproducts_controller.dart';
import 'package:my_own_post_put/controller/registration_controller.dart';

import 'package:my_own_post_put/view/Stuedic/profile/settings_nofications.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegistrationController(),
        ),
        ChangeNotifierProvider(
          create: (context) => GetproductsController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SettingsNotifications(),
      ),
    );
  }
}
