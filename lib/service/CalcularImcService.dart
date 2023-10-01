import 'package:imc/model/Pessoa.dart';

class CalcularImcService{

    double calculaIMC(Pessoa p) {
    final altura = p.getAltura();
    final peso = p.getPeso();
      if (altura == null || peso == null || altura <= 0 || peso <= 0) {
        throw ArgumentError("Confira os valores digitados");
      } else {
        return peso / (altura * altura);
      }
  }

  String classificacao(double valor){
    switch(valor){
      case < 16:
        return "Magreza Grave";
      case >= 16 && < 17:
          return "Magreza Moderada";
      case >= 17 && < 18.5:
          return "Magreza Leve";
      case >= 18.5 && < 25:
          return "Saudável";
      case >= 25 && < 30:
          return "Sobrepeso";
      case >= 30 && < 35:
          return "Obesidade Grau I";
      case >= 35 && < 40:
          return "Obesidade Grau II (severa)";
      default:
          return "Obesidade Grau III (mórbita)";
    }
  }

}