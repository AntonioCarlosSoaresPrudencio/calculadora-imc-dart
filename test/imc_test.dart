import 'package:imc/model/Pessoa.dart';
import 'package:imc/service/CalcularImcService.dart';
import 'package:test/test.dart';
void main() {
  group('IMC', () {
  CalcularImcService imcService = CalcularImcService();
    Pessoa p = Pessoa("Antonio", 0, 0);
    final tolerancia = 0.01;
    
    test('IMC Magreza Grave', () {
      p.setPeso(40.0);
      p.setAltura(1.75);
      double result = imcService.calculaIMC(p);
      expect(result, closeTo(13.06, tolerancia));
    });

     test('IMC Magreza Moderada', () {
      p.setPeso(51.19);
      p.setAltura(1.75);
      double result = imcService.calculaIMC(p);
      expect(result, closeTo(16.71, tolerancia));
    });

   test('IMC Saudável', () {
      p.setPeso(70.0);
      p.setAltura(1.75);
      double result = imcService.calculaIMC(p);
      expect(result, closeTo(22.85, tolerancia));
    });

    test('IMC Sobrepeso', () {
      p.setPeso(90.0);
      p.setAltura(1.75);
      double result = imcService.calculaIMC(p);
      expect(result, closeTo(29.38, tolerancia));
    });

    test('IMC obesidade grau I', () {
      p.setPeso(110.0);
      p.setAltura(1.75);
      double result = imcService.calculaIMC(p);
      expect(result, closeTo(35.91, tolerancia));
    });

    test('IMC obesidade grau II', () {
      p.setPeso(120.0);
      p.setAltura(1.75);
      double result = imcService.calculaIMC(p);
      expect(result, closeTo(39.18, tolerancia));
    });

    test('IMC obesidade grau III', () {
      p.setPeso(160.0);
      p.setAltura(1.75);
      double result = imcService.calculaIMC(p);
      expect(result, closeTo(52.24, tolerancia));
    });

    test('IMC com valor de altura inválido', () {
      p.setPeso(70.0);
      p.setAltura(-1.0);
      expect(() => imcService.calculaIMC(p), throwsA(isA<ArgumentError>()));
    });

    test('IMC com valor de peso inválido', () {
      p.setPeso(-70.0);
      p.setAltura(1.75);
      expect(() => imcService.calculaIMC(p), throwsA(isA<ArgumentError>()));
    });
  });
}
