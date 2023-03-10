import 'package:flutter/material.dart';

import 'package:flutter_application_1/splash.dart';

const save_key_name = 'userLoggedIn';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'demo', home: SplashScreen());
  }
}
