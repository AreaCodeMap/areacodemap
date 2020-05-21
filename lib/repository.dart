//import 'package:http/http.dart' show Client;
//
//import '.env.dart';
//
//class Repository {
//  final String _baseUrl = environment.baseUrl;
//
//  Client _client;
//
//  DebtorRepository() {
//    this._client = Client();
//  }
//
//  // For simplicity's sake we will not deal with json encoding/decoding
//  Future<any> info(String token) async {
//    return await this._client.get('$_baseUrl/info');
//  }
//}