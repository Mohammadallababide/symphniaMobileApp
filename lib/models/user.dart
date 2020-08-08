import 'package:symphonia_mobile_app/models/Account.dart';
import 'package:symphonia_mobile_app/models/UserInfo.dart';

class User {
  Account _account;
  UserInfo _userInfo;
  String userid;
  String getUserId() {
    return this.userid;
  }

  void setUserId(String value) {
    this.userid = value;
  }

  Account getAccount() {
    return this._account;
  }

  void setAccount(Account _account) {
    this._account = _account;
  }

  UserInfo getUserInfo() {
    return this._userInfo;
  }

  void setUserInfo(UserInfo _userInfo) {
    this._userInfo = _userInfo;
  }
}
