import 'package:calculadora_imc/classes/Pessoa.dart';

double calcularIMC(Pessoa pessoa) {
    return pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
  }