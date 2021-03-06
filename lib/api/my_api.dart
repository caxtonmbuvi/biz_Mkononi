import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CallApi {
  
  final String _register = 'https://api-stage.mkononi.biz/auth/';
  //final String _url = 'http://10.0.2.2:8000/api/';


// postData(data, apiUrl) async {
//     var fullUrl = _register + apiUrl;
//     return await http.post(Uri.parse(fullUrl),
//         body: jsonEncode(data), headers: _setHeaders());
//   }

  postData(data, apiUrl) async {
    var fullUrl = _register + apiUrl + await _getToken();
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
    
  }


  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '?token=$token';
  }

}
