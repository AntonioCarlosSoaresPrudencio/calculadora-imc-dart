class Pessoa{
  String _nome = "";
  double _peso = 0;
  double _altura = 0;


  Pessoa(String nome, double peso, double altura){
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome(){
    return _nome;
  }

    double? getPeso(){
    return _peso;
  }

    double? getAltura(){
    return _altura;
  }

    double? setPeso(double peso){
    _peso = peso;
  }

  double? setAltura(double altura){
    _altura = altura;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Peso": getPeso(),
      "Altura": getAltura(),
    }.toString();
  }
}


