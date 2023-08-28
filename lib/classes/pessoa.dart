class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  String getNome() {
    return _nome;
  }

  double getAltura() {
    return _altura;
  }

  double getPeso() {
    return _peso;
  }
}
