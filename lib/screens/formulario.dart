import 'file:///C:/Users/ana.cecilia.b.alves/OneDrive%20-%20Accenture/Documents/2020/CAELUM-FLUTTER/bytebank/lib/componentes/texto.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioDeTransferencia extends StatefulWidget {
  @override
  FormularioDeTransferenciaState createState() {
    return FormularioDeTransferenciaState();
  }
}
class FormularioDeTransferenciaState extends State<FormularioDeTransferencia>{
  final TextEditingController _controladorDoCampoConta =
  TextEditingController();
  final TextEditingController _controladorDoCampoValor =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CampoTexto(
                controlador: _controladorDoCampoConta,
                rotulo: "Número  da conta",
                dica: "0000"),
            CampoTexto(
                controlador: _controladorDoCampoValor,
                rotulo: "Valor",
                dica: "000",
                icone: Icons.monetization_on),
            RaisedButton(
                onPressed: () => _criaTransferencia(context),
                child: Text("Confirmar")),
          ],
        ),
      ),
    );
  }
  void _criaTransferencia(BuildContext context) {
    debugPrint('Clicou em confirmar.');
    int conta = int.tryParse(_controladorDoCampoConta.text);
    double valor = double.tryParse(_controladorDoCampoValor.text);
    if (conta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, conta);
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }

}