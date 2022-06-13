import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:json2dart/example-1/something.dart';
import 'coin.dart';

Future<void> callApi() async {
  var response = await http
      .get(Uri.parse('https://api.coingecko.com/api/v3/coins/bitcoin'));

  print(response.toString()); // Instance of 'Response'
  var body = response.body;
  Coin coin = Coin.fromJson(jsonDecode(body));

  print(coin.toString()); // Instance of 'Coin'
  print(coin.something.toString()); // [Cryptocurrency]
  print(coin.id.toString()); // bitcoin


  Something something = coin.temp;
  print(something.variable.toString()); // https://assets.coingecko.com/coins/images/1/small/bitcoin.png?1547033579
}
