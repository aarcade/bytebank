import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/formulario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemDeTransferencia extends StatelessWidget {
  Transferencia transferencia;

  ItemDeTransferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.conta.toString()),
      ),
    );
  }
}

class ListaDeTrasnferencia extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaDeTrasnferenciaState();
  }
}

class ListaDeTrasnferenciaState extends State<ListaDeTrasnferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Transferência'),
      ),
      body: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context, indice) {
            final transferencia = widget._transferencias[indice];
            return ItemDeTransferencia(transferencia);
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Future<Transferencia> futuro =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioDeTransferencia();
          }));
          futuro.then((transferenciaRecebida) {
            if (transferenciaRecebida != null){
              debugPrint("Chegamos no futuro");
              debugPrint(
                  'Transferência recebida no Futuro: $transferenciaRecebida');
              Future.delayed(Duration(seconds:5)).then((value){
                setState(() {
                  widget._transferencias.add(transferenciaRecebida);
                });
              });
            }
          });
        },
      ),
    );
  }
}


