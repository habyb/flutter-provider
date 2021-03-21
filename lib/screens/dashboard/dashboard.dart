import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterprovider/models/saldo.dart';
import 'package:flutterprovider/screens/dashboard/saldo.dart';
import 'package:flutterprovider/screens/deposito/formulario.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          Consumer<Saldo>(
            builder: (context, saldo, chhild) {
              return ElevatedButton(
                child: Text('Receber depósito'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return FormularioDeposito();
                    }),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
