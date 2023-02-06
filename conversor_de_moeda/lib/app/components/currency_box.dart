// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:conversor_de_moeda/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel>? items;
  final TextEditingController? controller;
  final void Function(CurrencyModel?)? onChanged;
  final CurrencyModel? selectedItem;

  const CurrencyBox({super.key, this.items, this.controller, this.onChanged, this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 66,
            child: DropdownButton<CurrencyModel>(
                iconEnabledColor: Colors.amber,
                value: selectedItem,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: items
                    ?.map((e) => DropdownMenuItem<CurrencyModel>(
                        value: e, child: Text(e.name!)))
                    .toList(),
                onChanged: onChanged),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.amber,
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber))),
          ),
        ),
      ],
    );
  }
}
