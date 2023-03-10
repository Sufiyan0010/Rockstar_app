import 'package:flutter/material.dart'; 
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkuserLoggedIn();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/rockstar.png',
          height: 300,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => LoginPage()));
  }

  Future<void> checkuserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final userLoggedIn = _sharedPrefs.getBool(save_key_name);
    if (userLoggedIn == null || userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((ctx) => const homeScreen())));
    }
  }
}
