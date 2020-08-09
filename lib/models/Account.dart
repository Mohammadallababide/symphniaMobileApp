class Account {
  String _accountemail;
  String _accountpassword;
  String _id;
  String _token;
  bool _issaved;

  bool getIsSaved() {
    return this._issaved;
  }

  void setIsSaved(bool value) {
    this._issaved = value;
  }

  String getAccountEmail() {
    return this._accountemail;
  }

  void setAccountEmail(String value) {
    this._accountemail = value;
  }

  String getAccountPassword() {
    return this._accountpassword;
  }

  void setAccountPassword(String value) {
    this._accountpassword = value;
  }

  String getId() {
    return this._id;
  }

  String getToken() {
    return this._token;
  }

  void setToken(String value) {
    this._token = value;
  }

  void setId(String value) {
    this._id = value;
  }
}
