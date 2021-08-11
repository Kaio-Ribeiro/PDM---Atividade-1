import 'Contato.dart';
import 'Endereco.dart';

class ContatoPessoal extends Contato {
  Endereco endereco;

  ContatoPessoal({required this.endereco, nome, telefone, data})
      : super(nome, telefone, data);

  @override
  String toString() {
    return 'Nome: ${this.nome}, \nEndereço: ${this.endereco}, \nTelefone: ${this.telefone}, \nData: ${this.data}';
  }
}