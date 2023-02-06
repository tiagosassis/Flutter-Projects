// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:conversor_de_moeda/app/components/currency_box.dart';
import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController? toText = TextEditingController();
  TextEditingController? fromText = TextEditingController();
  HomeController? homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20, right: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/conversor.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                  ),
                  CurrencyBox(
                    selectedItem: homeController?.toCurrency,
                    items: homeController?.currencies!,
                    controller: toText,
                    onChanged: (model) {
                      setState(() {
                        homeController!.toCurrency = model;
                      });
                    },
                  ),
                  CurrencyBox(
                    selectedItem: homeController?.fromCurrency,
                    items: homeController?.currencies!,
                    controller: fromText,
                    onChanged: (model) {
                      setState(() {
                        homeController!.fromCurrency = model;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          homeController?.convert();
                        },
                        child: Text('CONVERTER')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
