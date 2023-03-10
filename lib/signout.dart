


import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';


class signOut extends StatelessWidget {
  const signOut({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body:SafeArea(
        child: Padding(padding:const EdgeInsets.all(100),
        child: ListView(
          children: [
            Title(color: Colors.amber, child:const Text('If you are sure to signout click the signout button',
            style: TextStyle(color: Colors.amber,fontSize: 20),))
      
          ],
        ),
        ),
      ),
    );
  }
}