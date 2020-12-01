import 'file:///C:/Users/ana.cecilia.b.alves/OneDrive%20-%20Accenture/Documents/2020/CAELUM-FLUTTER/bytebank/lib/componentes/texto.dart';
import 'package:bytebank/screens/lista.dart';
import 'package:flutter/material.dart';

import 'models/transferencia.dart';

void main() => runApp(ByteBank());

class ByteBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaDeTrasnferencia(),
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        ),
      )
    );
  }
}
