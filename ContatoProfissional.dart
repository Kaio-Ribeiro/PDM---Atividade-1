import 'Contato.dart';

class ContatoProfissional extends Contato {
  String empresa;

  ContatoProfissional({required this.empresa, nome, telefone, data})
      : super(nome, telefone, data);

  @override
  String toString() {
    return 'Empresa: ${this.empresa}, \nNome: ${this.nome}, \nTelefone: ${this.telefone}, \nData: ${this.data}';
  }
}