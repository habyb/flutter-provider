import 'package:flutter/material.dart';
import 'package:flutterprovider/components/editor.dart';

const _tituloAppBar = 'Receber depósito';
const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'Valor';
const _textoBotaoConfirmar = 'Confirmar';

class FormularioDeposito extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controlador: _controladorCampoValor,
                dica: _dicaCampoValor,
                rotulo: _rotuloCampoValor,
                icone: Icons.monetization_on),
            ElevatedButton(
              onPressed: () {
                _criaDeposito(context);
              },
              child: Text(_textoBotaoConfirmar),
            )
          ],
        ),
      ),
    );
  }
}

_criaDeposito(context) {
  Navigator.pop(context);
}
