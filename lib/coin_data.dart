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

const String apikey = '3B34A82F-0CF0-4171-A419-7650A44907EB';

class CoinData {
  late final String currencyRequired;

  CoinData(this.currencyRequired);

  late dynamic decodedData = '?';
  Future getCoinExchange() async {
    http.Response response = await http.get(Uri.parse(
        'https://rest.coinapi.io/v1/exchangerate/BTC/$currencyRequired?apikey=3B34A82F-0CF0-4171-A419-7650A44907EB'));
    if (response.statusCode == 200) {
      String data = response.body;
      decodedData = data;
    }
    return decodedData;
  }
}
