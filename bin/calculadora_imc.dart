import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/Pessoa.dart';

void main(List<String> arguments) {
  print("Seu Nome: ");
  String nome = stdin.readLineSync() ?? "";
  print("Seu peso:");
  double peso = double.parse(stdin.readLineSync() ?? "0");
  print("sua altura:");
  double altura = double.parse(stdin.readLineSync() ?? "0");

  Pessoa pessoa = Pessoa(nome, peso, altura);

  try {
    switch (calcularIMC(pessoa)) {
      case < 16:
        print("${pessoa.getNome()} está com magresa grave");
        break;
      case < 17:
        print("${pessoa.getNome()} está com magresa moderada");
        break;
      case < 18.5:
        print("${pessoa.getNome()} está com magresa leve");
        break;
      case < 25:
        print("${pessoa.getNome()} está saudável");
        break;
      case < 30:
        print("${pessoa.getNome()} está com sobre peso");
        break;
      case < 35:
        print("${pessoa.getNome()} está com obesidade grau 1");
        break;
      case < 40:
        print("${pessoa.getNome()} está com obesidade severa");
        break;
      case >= 40:
        print("${pessoa.getNome()} está com obesidade Morbida");
        break;
      default:
    }
  } catch (e) {
    throw Exception("Ocorreu algum erro");
  }
}
