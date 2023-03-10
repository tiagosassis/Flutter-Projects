// ignore_for_file: prefer_const_constructors

import 'package:consumer/views/login_page.dart';
import 'package:flutter/material.dart';
import 'views/home_page.dart';


void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home':(context) => HomePage(),
        
      },
    );
  }
}
