// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'package:flutter_application_1/loginpage.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 21, 21),

      //--------------Appbar-------------\\

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(75, 0, 0, 0),
          child: Image.asset(
            'assets/images/logo.png',
            height: 60,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              backtologin(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 253, 178, 3),
              size: 30,
            )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            //----------------TEXT-------------\\

            const Padding(
                padding: EdgeInsets.fromLTRB(80, 20, 50, 10),
                child: Text(
                  'Create Your Account',
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                )),

            //---------------FIRST NAME----------\\

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 253, 178, 3), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    hintText: 'Enter Your Name',
                    prefixIcon: Icon(
                      Icons.person_sharp,
                      color: Color.fromARGB(255, 255, 178, 3),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3)),
                    labelText: 'Name',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3))),
              ),
            ),

            //-------------GMAIL---------------\\

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    hintText: 'Enter Your Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 255, 178, 3),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3)),
                    labelText: 'Email',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3))),
              ),
            ),

            //---------------PHONE---------------\\

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    hintText: 'Enter Phone Number',
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: Color.fromARGB(255, 255, 178, 3),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3)),
                    labelText: 'Phone',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3))),
              ),
            ),

            //---------------create password----------\\

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 178, 3), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 178, 3), width: 2),
                  ),
                  hintText: 'Create New Password',
                  prefixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color.fromARGB(255, 255, 178, 3),
                  ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 178, 3)),
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 178, 3)),
                ),
              ),
            ),

            //-----------------confirm password----------------\\

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    hintText: 'Confirm Your Password',
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color.fromARGB(255, 255, 178, 3),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3)),
                    labelText: 'Password',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextFormField(
                keyboardType: TextInputType.name,
                style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 253, 178, 3), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 178, 3), width: 2),
                    ),
                    hintText: 'Create Your User Id',
                    prefixIcon: Icon(
                      Icons.person_add,
                      color: Color.fromARGB(255, 255, 178, 3),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3)),
                    labelText: 'User Id',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 178, 3))),
              ),
            ),

            // --------------SignIn--------------\\

            Padding(
              padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.login_sharp,
                  color: Colors.amber,
                ),
                label: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.amber, fontSize: 15),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }
//----------BackToLogin Page--------------\\

  backtologin(BuildContext ctx) async {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) =>const LoginPage()), (route) => false);
  }
  
}
