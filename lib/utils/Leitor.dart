import 'dart:convert';
import 'dart:io';

class Leitor{
  static double lerDouble() {
      var value = lerString();
      try {
        return double.parse(value);
      } catch (e) {
        throw ArgumentError("Valor invalido");
      }
    }

    static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

    static double lerDoubleComTexto(String texto) {
      print(texto);
    return lerDouble();
  }

   static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }
}