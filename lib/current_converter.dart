library current_converter;

/// Converta o valor em real para as moedas mais usadas no mundo.
import 'dart:convert';
import 'package:http/http.dart' as http;

// Tabela top 10 moedas - País de origem

// 1	Dólar americano	(USD)	Estados Unidos
// 2	Euro	(EUR)	Países da Zona do Euro
// 3	Iene	(JPY)	Japão
// 4	Libra Esterlina	(GBP)	Reino Unido
// 5	Franco Suíço	(CHF)	Suíça
// 6	Dólar Canadense 	(CAD)	Canadá
// 7	Dólar Australiano	(AUD/NZD)	Austrália
// 8	Rand	(ZAR)	África do Sul
// 9	Yuan	(CNY)	China
// 10	Peso Argentino 	(ARS)	Argentina
class CurrentConverter {
  /// Obtém a taxa de câmbio da moeda especificada em relação ao Real Brasileiro.
  Future<double> getExchangeRate(String moeda) async {
    var response = await http
        .get(Uri.parse('https://api.exchangerate-api.com/v4/latest/BRL'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final exchangeRate = data['rates'][moeda]; // Obtém a taxa de câmbio

      return exchangeRate;
    } else {
      return 0;
    }
  }

  /// Converte um valor em reais para dólares americanos (USD).
  Future<double> convertDollar(valor) async {
    final exchangeRate = await getExchangeRate('USD');
    final valorDollar = valor * exchangeRate;
    return valorDollar;
  }

  /// Converte um valor em reais para euros (EUR).
  Future<double> convertEuro(valor) async {
    final exchangeRate = await getExchangeRate('EUR');
    final valorEuro = valor * exchangeRate;
    return valorEuro;
  }

  /// Converte um valor em reais para ienes japoneses (JPY).
  Future<double> convertYen(valor) async {
    final exchangeRate = await getExchangeRate('JPY');
    final valorYen = valor * exchangeRate;
    return valorYen;
  }

  /// Converte um valor em reais para libras esterlinas (GBP).
  Future<double> convertPound(valor) async {
    final exchangeRate = await getExchangeRate('GBP');
    final valorPound = valor * exchangeRate;
    return valorPound;
  }

  /// Converte um valor em reais para pesos argentinos (ARS).
  Future<double> convertPesoARG(valor) async {
    final exchangeRate = await getExchangeRate('ARS');
    final valorPeso = valor * exchangeRate;
    return valorPeso;
  }
  /// Converte um valor em reais para Franco Suíço	(CHF).
  Future<double> convertFranco(valor) async {
    final exchangeRate = await getExchangeRate('CHF');
    final valorFranco = valor * exchangeRate;
    return valorFranco;
  }

  /// Converte um valor em reais para Dólar Canadense (CAD).
  Future<double> convertDollarCAN(valor) async {
    final exchangeRate = await getExchangeRate('CAD');
    final valorCAD = valor * exchangeRate;
    return valorCAD;
  }

  /// Converte um valor em reais para Dólar Australiano	(AUD/NZD).
  Future<double> convertDollarAUS(valor) async {
    final exchangeRate = await getExchangeRate('AUD');
    final valorAUD = valor * exchangeRate;
    return valorAUD;
  }

  /// Converte um valor em reais para Rand	(ZAR).
  Future<double> convertRand(valor) async {
    final exchangeRate = await getExchangeRate('ZAR');
    final valorRand = valor * exchangeRate;
    return valorRand;
  }

  /// Converte um valor em reais para Yuan	(CNY).
  Future<double> convertYuan(valor) async {
    final exchangeRate = await getExchangeRate('CNY');
    final valorYuan = valor * exchangeRate;
    return valorYuan;
  }
}
