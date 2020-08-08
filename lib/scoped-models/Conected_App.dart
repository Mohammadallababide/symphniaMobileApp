import 'package:scoped_model/scoped_model.dart';
import '../models/Account.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

mixin ConectedAppModel on Model {
  bool _isLoading = false;
  // ignore: unused_field
  Account _useraccount;
}

mixin AccountModel on ConectedAppModel {
  static const String apiKey = 'AIzaSyBO_UnlGGsyIQbZyo0Z8xkeMHXopfts5Mo';
  Future<Map<String, dynamic>> singIn(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };
    final http.Response response = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$apiKey',
      body: json.encode(authData),
      headers: {'Content-Type': 'application/json'},
    );
    final Map<String, dynamic> responseData = json.decode(response.body);
    bool hasError = true;
    String message = 'Something went wrong.';
    if (responseData.containsKey('idToken')) {
      hasError = false;
      message = 'Authentication succeeded!';
    } else if (responseData['error']['message'] == 'EMAIL_NOT_FOUND' ||
        responseData['error']['message'] == 'NVALID_PASSWORD') {
      message = 'البريد الإلكتروني أو كلمة المرور غير صحيحة .';
    }
    _isLoading = false;
    notifyListeners();
    return {'success': !hasError, 'message': message};
  }

  Future<Map<String, dynamic>> singUp(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };
    final http.Response response = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$apiKey',
      body: json.encode(authData),
      headers: {'Content-Type': 'application/json'},
    );
    final Map<String, dynamic> responseData = json.decode(response.body);
    bool hasError = true;
    String message = 'تحقق من الأتصال بلأنترنت.';
    if (responseData.containsKey('idToken')) {
      hasError = false;
      message = 'Authentication succeeded!';
    } else if (responseData['error']['message'] == 'EMAIL_EXISTS') {
      message = 'البريد الإلكتروني المدخل موجود مسبقا.';
    }
    _isLoading = false;
    notifyListeners();
    return {'success': !hasError, 'message': message};
  }
}

mixin UtilityModel on ConectedAppModel {
  bool get isLoading {
    return _isLoading;
  }
}
