class Aluna {
  String _foto;
  String _nome;
  String _treino;
  String _historico;

  Aluna(this._foto, this._nome, this._treino, this._historico);

  String get foto => _foto;
  set foto(String value) {
    _foto = value;
  }

  String get nome => _nome;
  set nome(String value) {
    _nome = value;
  }

  String get treino => _treino;
  set treino(String value) {
    _treino = value;
  }

  String get historico => _historico;
  set historico(String value) {
    _historico = value;
  }
}
