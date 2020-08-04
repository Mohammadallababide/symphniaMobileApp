import 'package:symphonia_mobile_app/models/ConnectionInfo.dart';
import 'package:symphonia_mobile_app/models/EducationInfo.dart';
import 'package:symphonia_mobile_app/models/GeneralInfo.dart';
import 'package:symphonia_mobile_app/models/WorkInfo.dart';

class UserInfo {
  GeneralInfo _generalinfo;
  EducationInfo _educationInfo;
  ConnectionInfo _connectionInfo;
  WorkInfo _workInfo;

  GeneralInfo getGeneralinfo() {
    return this._generalinfo;
  }

  void setGeneralinfo(GeneralInfo value) {
    this._generalinfo = value;
  }

  EducationInfo getEducationInfo() {
    return this._educationInfo;
  }

  void setEducationInfo(EducationInfo value) {
    this._educationInfo = value;
  }

  ConnectionInfo getConnectionInfo() {
    return this._connectionInfo;
  }

  void setConnectionInfo(ConnectionInfo value) {
    this._connectionInfo = value;
  }

  WorkInfo getWorkInfo() {
    return this._workInfo;
  }

  void setWorkInfo(WorkInfo value) {
    this._workInfo = value;
  }
}
