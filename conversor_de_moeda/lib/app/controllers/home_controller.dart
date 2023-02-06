// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';

import '../models/currency_model.dart';

class HomeController {
  List<CurrencyModel>? currencies;

  final TextEditingController? toText;
  final TextEditingController? fromText;

  CurrencyModel? toCurrency;
  CurrencyModel? fromCurrency;

  HomeController({this.toText, this.fromText}){
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies![0];
    fromCurrency = currencies![1];
  }

  void convert() {
    String text = toText!.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency!.name == "Real") {
      returnValue = value * toCurrency!.real;
    } else {
      if (fromCurrency!.name == "Dollar") {
        returnValue = value * toCurrency!.dollar;
      } else {
        if (fromCurrency!.name == "Euro") {
          returnValue = value * toCurrency!.euro;
        } else {
          returnValue = value * toCurrency!.bitcoin;
        }
      }
    }

    fromText?.text = returnValue.toStringAsFixed(2);
  }
}
