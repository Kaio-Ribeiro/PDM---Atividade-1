import 'Agenda.dart';
import 'ContatoPessoal.dart';
import 'ContatoProfissional.dart';
import 'Endereco.dart';
import 'Contato.dart';

void main() {
  List<Contato> contatos = [];

  var agenda = Agenda();

  var contato_prof1 = ContatoProfissional(
      nome: "Kaio Anderson",
      telefone: "88997959995",
      data: DateTime.now(),
      empresa: "Brisanet");

  var contato_prof2 = ContatoProfissional(
      nome: "José Ribeiro",
      telefone: "88997959998",
      data: DateTime.now(),
      empresa: "Brisanet");

  var end =
      Endereco(rua: "Rua Professor Natanael", bairro: "Prado", numero: 123);

  var contato_pess1 = ContatoPessoal(
      nome: "Rosie",
      telefone: "88999999999",
      data: DateTime.now(),
      endereco: end);

  end = Endereco(rua: "Rua João Candido", bairro: "Vieira", numero: 123);

  var contato_pess2 = ContatoPessoal(
      nome: "Paula Arruda",
      telefone: "88999999999",
      data: DateTime.now(),
      endereco: end);

  agenda.Adicionar(contato_prof1, contatos);
  agenda.Adicionar(contato_prof2, contatos);
  agenda.Adicionar(contato_pess1, contatos);
  agenda.Adicionar(contato_pess2, contatos);

  for (Contato contato in contatos) {
    print(contato.toString());
    print('\n');
  }

  print("Removendo contato: " + contato_pess1.nome + "\n");
  agenda.Remover(contato_pess1, contatos);

  for (Contato contato in contatos) {
    print(contato.toString());
    print('\n');
  }

  print("Pesquisando contato: " + contato_pess2.nome + "\n");
  var pesquisa = agenda.Pesquisar(contato_pess2, contatos);
  if (pesquisa) {
    print("Contato " + contato_pess2.nome + " Encontrado\n");
  } else {
    print("Contato " + contato_pess2.nome + " Não Encontrado\n");
  }

  print("Pesquisando contato: " + contato_pess1.nome + "\n");
  pesquisa = agenda.Pesquisar(contato_pess1, contatos);
  if (pesquisa) {
    print("Contato " + contato_pess1.nome + " Encontrado\n");
  } else {
    print("Contato " + contato_pess1.nome + " Não Encontrado\n");
  }
}
