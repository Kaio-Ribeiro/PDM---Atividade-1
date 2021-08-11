class Endereco {
  String rua;
  String bairro;
  int numero;

  Endereco({required this.rua, required this.bairro, required this.numero});

  @override
  String toString() {
    return 'Logradouro: ${this.rua}, Bairro: ${this.bairro}, N°: ${this.numero} ';
  }
}