import 'dart:async';
import '../../locator.dart';
import 'api.dart';

class CryptoService {
  Api _api = locator<Api>();

  // StreamController<User> userController = StreamController<User>();

  List _cryptos;
  List get cryptos => _cryptos;

  Future fetchCoins() async {
    _cryptos = await _api.fetchCoins();
  }

  Future fetchCoinById(String id) async {
    _cryptos = await _api.fetchCoinById(id);
  }
}
