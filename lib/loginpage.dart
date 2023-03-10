import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 21, 21, 21),

        //--------------------AppBar-----------------\\

        appBar: AppBar(
          leading: const Icon(
            Icons.home,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const signUp()));
              },
              icon: const Icon(
                Icons.person_add_alt_1,
                color: Color.fromARGB(255, 247, 182, 23),
                size: 28,
              ),
            )
          ],
          backgroundColor: Color.fromARGB(255, 8, 6, 6),
          elevation: 0,
          title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 70,
                ),
              )),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: Column(
                children: [
                  const Text(
                    'Login Your Account',
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 60,

                    //--------------Username---------------\\

                    child: TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 179, 9),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 179, 9),
                                width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 179, 9),
                                width: 2),
                          ),
                          hintText: 'User Name or Email',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 255, 179, 9),
                          ),
                          hintStyle:
                              TextStyle(color: Color.fromARGB(255, 255, 179, 9)),
                          labelText: 'User Name',
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 255, 179, 9))),
                    ),
                  ),

                  const SizedBox(height: 30),

                  //--------------------------password-------------------\\

                  SizedBox(
                    height: 80,
                    child: TextFormField(
                      controller: _passwordController,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 179, 9),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      obscureText: passenable,
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 179, 9),
                                width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 179, 9),
                                width: 2),
                          ),
                          hintText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 255, 179, 9),
                          ),
                          suffix: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (passenable) {
                                    passenable = false;
                                  } else {
                                    passenable = true;
                                  }
                                });
                              },
                              icon: Icon(
                                passenable == true
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color.fromARGB(255, 255, 179, 9),
                              )),
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 179, 9)),
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 179, 9)),
                          helperText: 'Forget Your Password',
                          helperStyle: const TextStyle(
                              color: Color.fromARGB(255, 158, 158, 158))),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //-----------------Login----------------\\

                  ElevatedButton.icon(
                    onPressed: () {
                      checkLogin(context);
                    },
                    icon: const Icon(
                      Icons.login,
                      color: Color.fromARGB(255, 247, 182, 23),
                    ),
                    label: const Text(
                      'Login',
                      style: TextStyle(color: Colors.amber),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black)),
                  ),
                  const Divider(
                    thickness: 3,
                    color: Colors.amber,
                  ),

                  //----------------text-----------\\

                  const Text(
                    "Or",
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),

                  //-----------------Signup-------------\\

                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signUp()));
                    },
                    icon: const Icon(
                      Icons.person_add,
                      color: Color.fromARGB(255, 247, 182, 23),
                    ),
                    label: const Text(
                      'Sign up',
                      style: TextStyle(color: Colors.amber),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black)),
                  )
                ],
              ),
            ),
          ],
        ));
  }

//------------------LoginCheack--------------------\\

  void checkLogin(BuildContext ctx) async {
    // ignore: no_leading_underscores_for_local_identifiers
    final _username = _usernameController.text;
    // ignore: no_leading_underscores_for_local_identifiers
    final _password = _passwordController.text;
    if (_username == 'Sufiyan' && _password == '12345678') {
      // ignore: no_leading_underscores_for_local_identifiers
      final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(save_key_name, true);

      // ignore: use_build_context_synchronously
      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => const homeScreen()));
    } else {
      (ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(30),
          duration: Duration(seconds: 1),
          content: Text('Incorrct Password or Username'))));
    }
  }
}
