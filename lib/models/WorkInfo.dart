class WorkInfo {
  List<String> _serviceslist;
  List<String> _prevschoollist;
  int _yearexpr;
  bool _activated;
  int _workhours;
  String _userdefinition;

  List<String> getServicesList() {
    return this._serviceslist;
  }

  void setServicesList(List<String> value) {
    this._serviceslist = value;
  }

  List<String> getPrevSchoolList() {
    return this._prevschoollist;
  }

  void setPrevSchoolList(List<String> value) {
    this._prevschoollist = value;
  }

  int getYearExpr() {
    return this._yearexpr;
  }

  void setYearExpr(int value) {
    this._yearexpr = value;
  }

  bool isActivated() {
    return this._activated;
  }

  void setActivated(bool value) {
    this._activated = value;
  }

  int getWorkHours() {
    return this._workhours;
  }

  void setWorkHours(int value) {
    this._workhours = value;
  }

  String getUserDefinition() {
    return this._userdefinition;
  }

  void setUserDefinition(String value) {
    this._userdefinition = value;
  }
}
