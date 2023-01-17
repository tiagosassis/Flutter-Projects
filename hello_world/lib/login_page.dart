// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: Image.asset(
                      'assets/images/UFCAT_logo_Completa_colorido.png'),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (text) {
                            email = text;
                          },
                          decoration: InputDecoration(
                            labelText: 'Usuário',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: TextField(
                          obscureText: true,
                          onChanged: (text) {
                            password = text;
                          },
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(onPressed: (){
                        if (email == 'tiaguiassis@gmail.com' && password == 'root') {
                          print('Logou com sucesso!');
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          print('login ou senha invalido');
                        }
                      },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 41, 121, 124))),
                      child: Text('Entrar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
          ),
          _body(),
        ],
      ),
    );
  }
}