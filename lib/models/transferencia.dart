class Transferencia {
  double valor;
  int conta;

  Transferencia(this.valor, this.conta);

  String toString() {
    String valorFormatado = valor.toStringAsFixed(2);
    return 'Transferencia{valor: $valorFormatado, conta: $conta}';
  }
}