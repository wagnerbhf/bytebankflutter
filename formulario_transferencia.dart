import 'package:bytebank/transferencia.dart';
import 'package:flutter/material.dart';

import 'editor.dart';

const String _tituloAppBar = 'Criando Transferência';
const String _rotuloValor = 'Valor';
const String _dicaValor = '0.00';
const String _rotuloNumeroConta = 'Número da Conta';
const String _dicaNumeroConta = '0000';
const String _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _numeroConta = TextEditingController();
  final TextEditingController _valor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(_tituloAppBar)
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                  controlador: _numeroConta,
                  rotulo: _rotuloNumeroConta,
                  dica: _dicaNumeroConta
              ),
              Editor(
                  controlador: _valor,
                  rotulo: _rotuloValor,
                  dica: _dicaValor,
                  icone: Icons.monetization_on
              ),
              ElevatedButton(
                  onPressed: () => _criarTransferencia(context),
                  child: Text(_textoBotaoConfirmar)
              )
            ],
          ),
        )
    );
  }

  void _criarTransferencia(BuildContext context) {
    int numeroConta = int.tryParse(_numeroConta.text) != null ? int.parse(_numeroConta.text) : 0;
    double valor = double.tryParse(_valor.text) != null ? double.parse(_valor.text) : 0;
    var transferenciaCriada = Transferencia(valor, numeroConta);
    Navigator.pop(context, transferenciaCriada);
  }
}