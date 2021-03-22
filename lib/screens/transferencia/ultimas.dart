import 'package:flutter/material.dart';
import 'package:flutterprovider/models/transferencias.dart';
import 'package:flutterprovider/screens/transferencia/lista.dart';
import 'package:provider/provider.dart';

final _titulo = 'Últimas transferências';

class UltimasTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
        Consumer<Transferencias>(
          builder: (context, transferencias, child){
            return ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, indice){
                return ItemTransferencia(transferencias.transferencias[indice]);
              },
            );
          }
          ),
        ElevatedButton(
          child: Text('Transferências'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ListaTransferencias();
              }),
            );
          },
        )
      ],
    );
  }
}
