import 'package:scoped_model/scoped_model.dart';
import '../models/Account.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

mixin ConectedAppModel on Model {
  bool _isLoading = false;
  Account _useraccount;
}

mixin AccountModel on ConectedAppModel {
  Account get account {
    return _useraccount;
  }

  static const String apiKey = 'AIzaSyBO_UnlGGsyIQbZyo0Z8xkeMHXopfts5Mo';
  Future<Map<String, dynamic>> singIn(
      String email, String password, bool issaved) async {
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
    String message = 'يوجد خطاء في الأتصال تحقق من اتصالك بلشبكة الانترنت.';
    if (responseData.containsKey('idToken')) {
      hasError = false;
      message = 'Authentication succeeded!';
      _useraccount = new Account();
      _useraccount.setAccountEmail(email);
      _useraccount.setAccountPassword(password);
      _useraccount.setId(responseData['localId']);
      _useraccount.setToken(responseData['idToken']);
      // لحفظ معلومات تسجيل الدخول إذا أراد المستخدم حفظها من اجل تسجيل دخول تلقائي على نفس الجهاز
      if (issaved) {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', _useraccount.getToken());
        prefs.setString('email', _useraccount.getAccountEmail());
        prefs.setString('password', _useraccount.getAccountPassword());
        prefs.setString('id', _useraccount.getId());
      }
    } else if (responseData['error']['message'] == 'EMAIL_NOT_FOUND' ||
        responseData['error']['message'] == 'NVALID_PASSWORD') {
      message = 'البريد الإلكتروني أو كلمة المرور غير صحيحة .';
    }
    _isLoading = false;
    notifyListeners();
    return {'success': !hasError, 'message': message};
  }

  void autoAuthenticate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('token');
    if (token != null) {
      final String email = prefs.getString('email');
      final String password = prefs.getString('password');
      final String id = prefs.getString('id');
      _useraccount = new Account();
      _useraccount.setAccountEmail(email);
      _useraccount.setAccountPassword(password);
      _useraccount.setId(id);
      _useraccount.setToken(token);
    }
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
      _useraccount = Account();
      _useraccount.setAccountEmail(email);
      _useraccount.setAccountPassword(password);
      _useraccount.setId(responseData['localId']);
      _useraccount.setToken(responseData['idToken']);
      //  لحفظ معلومات إنشاء الحساب على الجهاز من اجل تسجيل دخول تلقائي على هذا الحساب المنشء من نفس الجهاز
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', _useraccount.getToken());
      prefs.setString('email', _useraccount.getAccountEmail());
      prefs.setString('password', _useraccount.getAccountPassword());
      prefs.setString('id', _useraccount.getId());
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
