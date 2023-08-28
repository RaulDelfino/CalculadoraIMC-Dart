import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calcular imc', () {
    Pessoa pessoa = Pessoa("Raul", 80, 1.80);
    expect((calcularIMC(pessoa) - 24.69), lessThan(0.01));
  });
}
