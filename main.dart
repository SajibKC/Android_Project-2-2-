import 'package:booktickets/registerpage.dart';
import 'package:flutter/material.dart';
import 'package:booktickets/loginscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'loginscreen',
    routes: {
      'loginscreen': (context)=>mylogin(),
      'registerpage': (context)=>myregister()
    },
  ));
}

