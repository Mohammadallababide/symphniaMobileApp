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

  static const String apiKey = 'http://192.168.1.8:8000/api';

  Future<bool> sendActivation(String code) async {
    _isLoading = true;
    notifyListeners();
    final Map<String, dynamic> acctivationCode = {
      'two_factor_code': code,
    };
    try {
      final http.Response response = await http.post(
        apiKey + '/details',
        body: json.encode(acctivationCode),
        headers: {
          'Accept': 'application/json',
          'Content-type': 'application/json',
          'Authorization': 'Bearer ' + _useraccount.getToken(),
        },
      );
      if (response.statusCode != 200 && response.statusCode != 201) {
        _isLoading = false;
        notifyListeners();
        return false;
      }
      final Map<String, dynamic> accitvationResponse =
          json.decode(response.body);
      print(
          '*************************************************************************');
      print(accitvationResponse);
      print(
          '*************************************************************************');
      if (response.body.contains('success')) {
        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (error) {
      // print(
      //     '*************************************************************************');
      // print('///Catch Error///');
      // print(
      //     '*************************************************************************');
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<Map<String, dynamic>> singUp(String email, String password) async {
    bool hasError = true;
    String message = ' ';
    _isLoading = true;
    notifyListeners();
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    try {
      final http.Response response = await http.post(
        apiKey + '/register',
        body: json.encode(authData),
        headers: {
          'Accept': 'application/json',
          'Content-type': 'application/json'
        },
      );
      print(
          "*********************************************************************************************");
      print(response.statusCode);
      print(
          "*********************************************************************************************");
      if (response.statusCode == 404) {
        message = 'خطاء بلأتصال بشبكة الأنترنت';
        hasError = true;
        _isLoading = false;
        notifyListeners();
        return {'success': !hasError, 'message': message};
      }
      final Map<String, dynamic> responseData = json.decode(response.body);
      print(
          "*********************************************************************************************");
      print(responseData);
      print(
          "*********************************************************************************************");

      if (response.body.contains('error')) {
        hasError = true;
        print('data : ${responseData['error']}');
        message = 'إن هذا البريد الأكتروني مسجل مسبقا';
        // responseData['error']['email']
      } else {
        hasError = false;
        print('data : ${responseData['success']['token']}');
        _useraccount = new Account();
        _useraccount.setAccountEmail(email);
        _useraccount.setAccountPassword(password);
        _useraccount.setToken(responseData['success']['token']);
      }
      _isLoading = false;
      notifyListeners();
      return {'success': !hasError, 'message': message};
    } catch (error) {
      _isLoading = false;
      message = 'يوجد خطاء بلأتصال الأنترنت';
      notifyListeners();
      return {'success': !hasError, 'message': message};
    }
    // if (responseData.containsKey('remember_token')) {
    //   hasError = false;
    //   message = 'Authentication succeeded!';
    //   _useraccount = Account();
    //   _useraccount.setAccountEmail(email);
    //   _useraccount.setAccountPassword(password);
    //   _useraccount.setId(responseData['id']);
    //   _useraccount.setToken(responseData['remember_token']);
    //   //  لحفظ معلومات إنشاء الحساب على الجهاز من اجل تسجيل دخول تلقائي على هذا الحساب المنشء من نفس الجهاز
    //   final SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.setString('token', _useraccount.getToken());
    //   prefs.setString('email', _useraccount.getAccountEmail());
    //   prefs.setString('password', _useraccount.getAccountPassword());
    //   prefs.setString('id', _useraccount.getId());
    // } else if (responseData['error']['message'] == 'EMAIL_EXISTS') {
    //   message = 'البريد الإلكتروني المدخل موجود مسبقا.';
    // }
  }

  void autoAuthenticate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('token');
    if (token != null) {
      final String email = prefs.getString('email');
      final String password = prefs.getString('password');
      final String id = prefs.getString('id');
      _useraccount.setAccountEmail(email);
      _useraccount.setAccountPassword(password);
      _useraccount.setId(id);
      _useraccount.setToken(token);
      notifyListeners();
    }
  }

  Future<Map<String, dynamic>> singIn(
      String email, String password, bool issaved) async {
    _isLoading = true;
    notifyListeners();
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };
    bool hasError = true;
    String message = 'يوجد خطاء في الأتصال تحقق من اتصالك بلشبكة الانترنت.';
    try {
      final http.Response response = await http.post(
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$apiKey',
        body: json.encode(authData),
        headers: {'Content-Type': 'application/json'},
      );
      final Map<String, dynamic> responseData = json.decode(response.body);
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
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      return {'success': !hasError, 'message': message};
    }
  }
}

mixin UtilityModel on ConectedAppModel {
  bool get isLoading {
    return _isLoading;
  }
}
