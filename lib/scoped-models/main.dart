import 'package:scoped_model/scoped_model.dart';
import 'package:symphonia_mobile_app/scoped-models/Conected_App.dart';

class MainModel extends Model
    with ConectedAppModel, AccountModel, UtilityModel {}
