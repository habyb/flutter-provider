import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterprovider/screens/dashboard/saldo.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SaldoCard(),
      ),
    );
  }

}