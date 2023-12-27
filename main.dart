import 'dart:convert';
import 'package:flutter/material.dart';
import 'lista_transferencia.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent[700]),
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary
        )
      ),
        home: ListaTransferencias()
    );
  }
}