import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<Map<String, String>> getCurrencyData(String currency) async {
    String btc = jsonDecode((await http.get(
                'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC$currency'))
            .body)['ask']
        .toStringAsFixed(0);
    String eth = jsonDecode((await http.get(
                'https://apiv2.bitcoinaverage.com/indices/global/ticker/ETH$currency'))
            .body)['ask']
        .toStringAsFixed(0);
    String ltc = jsonDecode((await http.get(
                'https://apiv2.bitcoinaverage.com/indices/global/ticker/LTC$currency'))
            .body)['ask']
        .toStringAsFixed(0);
    return {
      'BTC': btc,
      'ETH': eth,
      'LTC': ltc,
    };
  }
}
