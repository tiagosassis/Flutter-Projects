// ignore_for_file: non_constant_identifier_names

import 'package:conversor_de_moeda/app/controllers/home_controller.dart';
import 'package:conversor_de_moeda/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('deve converter de real para dollar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('deve converter de dollar para real', () {
    toText.text = '1,0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dollar', real: 5.65, dollar: 1.0, euro: 0.85, bitcoin: 0.000088);
    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1.0, dollar: 0.18, euro: 0.15, bitcoin: 0.000016);
    homeController.convert();
    expect(fromText.text, '5.65');
  });
}
