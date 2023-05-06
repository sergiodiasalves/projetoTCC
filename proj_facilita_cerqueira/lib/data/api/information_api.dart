import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  final _baseUrl = 'https://api-tcc.vercel.app';
  final Map<String, String> _baseHeaders = {'Content-Type': 'application/json'};
  final String _authorization = '';

  Api auth() {
    _baseHeaders['authorization'] = 'bearer $_authorization';
    return this;
  }

  Api unAuth() {
    _baseHeaders.remove('authorization');
    return this;
  }

  Future<http.Response> get(String url, {Map<String, String>? headers}) async {
    var localHeaders = headers ?? {};
    localHeaders.addAll(_baseHeaders);

    var uri = Uri.parse('$_baseUrl$url');
    try {
      var response = await http.get(uri, headers: localHeaders);
      return response;
    } catch (e, s) {
      return http.Response(
          json.encode({
            'error': e.toString(),
            'stackTrace': s.toString(),
          }),
          503
        );
    }
  }

  Future<http.Response> post(
    String url, {
    Map<String, String>? headers,
    Object? body,
  }) async {
    var localHeaders = headers ?? {};
    localHeaders.addAll(_baseHeaders);
    var uri = Uri.parse('$_baseUrl$url');
    try {
      var response = await http.post(uri, headers: localHeaders, body: body);
      return response;
    } catch (e, s) {
      return http.Response(
          json.encode({
            'error': e.toString(),
            'stackTrace': s.toString(),
          }),
          503);
    }
  }
}