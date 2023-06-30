import 'package:flutter_test/flutter_test.dart';
import 'package:current_converter/current_converter.dart';

void main() {
  CurrentConverter converter = CurrentConverter();

  ///Verifica se a conversão de um valor em reais para dólares americanos está correta.
  test('Conversão de valor em reais para dólares americanos', () async {
    const valorEmReais = 100.0;
    final resultadoEsperado =
        valorEmReais * await converter.getExchangeRate('USD');
    final resultado = await converter.convertDollar(valorEmReais);

    expect(resultado, resultadoEsperado);
  });
  ///Verifica se a conversão de um valor em reais para euros está correta.
  test('Conversão de valor em reais para euros', () async {
    const valorEmReais = 100.0;
    final resultadoEsperado =
        valorEmReais * await converter.getExchangeRate('EUR');
    final resultado = await converter.convertEuro(valorEmReais);

    expect(resultado, resultadoEsperado);
  });

  ///Verifica se a conversão de um valor em reais para libra esterlina está correta.
  test('Conversão de valor em reais para Libra Esterlina', () async {
    const valorEmReais = 100.0;
    final resultadoEsperado =
        valorEmReais * await converter.getExchangeRate('GBP');
    final resultado = await converter.convertPound(valorEmReais);

    expect(resultado, resultadoEsperado);
  });
  ///Verifica se a conversão de um valor em reais para iebes japoneses está correta.
  test('Conversão de valor em reais para ienes japoneses', () async {
    const valorEmReais = 100.0;
    final resultadoEsperado =
        valorEmReais * await converter.getExchangeRate('JPY');
    final resultado = await converter.convertYen(valorEmReais);

    expect(resultado, resultadoEsperado);
  });
 ///Verifica se a conversão de um valor em reais para pesos argentinos está correta.
  test('Conversão de valor em reais para pesos argentinos', () async {
    const valorEmReais = 100.0;
    final resultadoEsperado =
        valorEmReais * await converter.getExchangeRate('ARS');
    final resultado = await converter.convertPesoARG(valorEmReais);

    expect(resultado, resultadoEsperado);
  });
 ///Verifica se a conversão de um valor em reais para franco suiço retorna double.
  test('Converte um valor em reais para franco suiço (CHF)', () async {
    const valorReais = 100.0;
    final valorFranco = await converter.convertFranco(valorReais);
    expect(valorFranco, isA<double>());
  });
 ///Verifica se a conversão de um valor em reais para dólar canadense retorna double.
  test('Converte um valor em reais para Dólar Canadense (CAD)', () async {
    const valorReais = 100.0;
    final valorCAD = await converter.convertDollarCAN(valorReais);
    expect(valorCAD, isA<double>());
  });
 ///Verifica se a conversão de um valor em reais para dólar australiano retorna double.
  test('Converte um valor em reais para Dólar Australiano (AUD)', () async {
    const valorReais = 100.0;
    final valorAUD = await converter.convertDollarAUS(valorReais);
    expect(valorAUD, isA<double>());
  });
 ///Verifica se a conversão de um valor em reais para rand retorna double.
  test('Converte um valor em reais para Rand (ZAR)', () async {
    const valorReais = 100.0;
    final valorRand = await converter.convertRand(valorReais);
    expect(valorRand, isA<double>());
  });
 ///Verifica se a conversão de um valor em reais para yuan retorna double.
  test('Converte um valor em reais para Yuan (CNY)', () async {
    const valorReais = 100.0;
    final valorYuan = await converter.convertYuan(valorReais);
    expect(valorYuan, isA<double>());
  });
}
