import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:proj_facilita_cerqueira/data/api/information_api.dart';
import 'package:proj_facilita_cerqueira/data/model/information_model.dart';


class Informationcontroller extends ChangeNotifier {
  List<String> _categories = [];
  final Map<String,List<Information>> _info = {};
  bool _isLoading = false;
  String _messageError = '';

  List<String> get categories => _categories;
  Map<String,List<Information>> get info =>_info;
  bool get isLoading => _isLoading;
  String get messageError => _messageError;

  String _errorFormater(Response response) {
    String msg;
    try {
      var jsonBody = jsonDecode(response.body);
      if (jsonBody is Map && jsonBody.containsKey('error')) {
        msg = jsonBody['error'];
      } else {
        msg = jsonBody.toString();
      }
    } catch (e) {
      msg = e.toString();
    }
    return 'Erro: ${response.statusCode}-$msg';
  }

  Future<void> list() async {
    _isLoading = true;
    notifyListeners();
    var response =
        await Api().unAuth().get('/informations/categories');
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      _categories = result['searched'].map<String>((s) => s.toString()).toList();
      for (var e in _categories) {
        var resp = await Api().unAuth().get('/informations/category/$e');
        if (resp.statusCode == 200) {
          var result = jsonDecode(resp.body);
          final entrie = <String,List<Information>> {e: Information.fromList(result['searched'])};
          _info.addAll(entrie);
        } else {
          _messageError = _errorFormater(response);
        }        
      }
    } else {
      _messageError = _errorFormater(response);
    }
    _isLoading = false;
    notifyListeners();
  }


}