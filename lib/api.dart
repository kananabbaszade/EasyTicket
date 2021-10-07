import 'dart:async';
import 'dart:convert';
import 'package:easy_ticket_01/model/login.dart';
import 'package:http/http.dart' as http;

import 'model/user.dart';

class API {
  Future<User> kullaniciGetir(String id) async {
    final response = await http.post(
        Uri.parse('https://matakansenturk.com/api/user.php'),
        body: {'Id': id});

    return User.fromJson(jsonDecode(response.body)[0]);
  }

  Future<Login> login(String email, String password) async {
    final response = await http.post(
        Uri.parse('https://matakansenturk.com/api/login.php'),
        body: {'Email': email, 'Password': password});
    
    return Login.fromJson(jsonDecode(response.body));
  }
}
