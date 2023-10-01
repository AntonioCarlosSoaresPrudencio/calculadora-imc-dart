import 'package:imc/model/Pessoa.dart';
import 'package:imc/service/CalcularImcService.dart';
import 'package:imc/utils/leitor.dart';

void main(){
  CalcularImcService imcService = CalcularImcService();
  String nome = Leitor.lerStringComTexto("Digite seu nome: ");
  double peso = Leitor.lerDoubleComTexto("Digite seu peso: ");
  double altura = Leitor.lerDoubleComTexto("Digite sua altura em metros, EX: 1.74: ");
  Pessoa p1 = Pessoa(nome, peso, altura);
  double resultado = imcService.calculaIMC(p1);
  String classificacao = imcService.classificacao(resultado);
  print("${p1.getNome()} seu IMC é de ${resultado.toStringAsFixed(2)}.\nClassificação: ${classificacao}.");

}
