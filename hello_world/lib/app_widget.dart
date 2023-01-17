import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'package:hello_world/login_page.dart';
import 'home_page.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 41, 121, 124),
              titleTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ), //TextStyle
            ), //AppBarTheme
              primaryColor: Colors.green,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => const HomePage('Tiago', 'tiaguiassis@gmail.com'),
          },
        );
      },
      animation: AppController.instance,
    );
  }
}
