import 'Contato.dart';

class Agenda {
  void Adicionar(Contato c, List<Contato> contatos) {
    contatos.add(c);
  }

  void Remover(Contato c, List<Contato> contatos) {
    contatos.remove(c);
  }

  bool Pesquisar(Contato c, List<Contato> contatos) {
    return contatos.contains(c);
  }
}
