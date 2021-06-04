import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;
  bool returnSecureToken;

  Future<void> signup(String email, String password) async {
    var url = Uri.https('identitytoolkit.googleapis.com','/v1/accounts:signInWithCustomToken', {'key' :'{AIzaSyDGmIK7jQi11qfdn3lE3_qlBHu42wTGWMw}'});
    final response = await http.post(
      url,
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    print(json.decode(response.body));
  }
}
