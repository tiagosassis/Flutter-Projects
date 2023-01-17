// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  final String accountName, accountEmail;

  const HomePage(this.accountName, this.accountEmail);

  @override
  State<HomePage> createState() {
    return HomePageState(accountName, accountEmail);
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  final String title = 'Home Page';

  String accountName, accountEmail;
  HomePageState(this.accountName, this.accountEmail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 41, 121, 12)),
                accountName: Text(accountName),
                accountEmail: Text(accountEmail),
                currentAccountPicture: ClipOval(child: Image.network('https://scontent.fudi3-1.fna.fbcdn.net/v/t1.6435-9/179464476_1801005073396627_3830439597853228548_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=j2ILoAhPrnYAX_9YgDf&_nc_ht=scontent.fudi3-1.fna&oh=00_AfDAIzInhMHhv8SvTG0bcGaLdFdKVY373LhYGsg892xALA&oe=63ECEE54')),
                ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.all(4.0),
        child: ListView(children: [
          Column(
            children: [
              Text('Você clicou no botão $counter vezes'),
              CustomSwitch(),
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: ((value) {
          AppController.instance.changeTheme();
        }));
  }
}
