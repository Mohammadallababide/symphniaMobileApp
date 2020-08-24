import 'package:flutter/material.dart';
import 'package:symphonia_mobile_app/Pages/CreateEdeuctionInfo.dart';
import 'package:symphonia_mobile_app/Pages/IntroPage.dart';
import 'package:symphonia_mobile_app/Pages/SingInPage.dart';
import 'package:symphonia_mobile_app/scoped-models/main.dart';
import './Pages/SingupPage.dart';
import 'Pages/AuthPage.dart';
import 'package:scoped_model/scoped_model.dart';

import 'Pages/CreategeneralInfoPage.dart';
import 'Pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final MainModel _model = MainModel();
  @override
  void initState() {
    _model.autoAuthenticate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: _model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (BuildContext context) => ScopedModelDescendant<MainModel>(
                  builder:
                      (BuildContext context, Widget widget, MainModel model) {
                return model.account == null ? IntroPage() : HomePage();
              }),
          '/singin': (BuildContext context) => SingInPage(),
          '/singup': (BuildContext context) => SingUpPage(),
          '/auth': (BuildContext context) => AuthPage(),
          '/home': (BuildContext context) => HomePage(),
          '/cr_generalInfo': (BuildContext context) => CreateGeneralInfoPage(),
          // cr_generalInfo
          '/cr_eduectionInfo': (BuildContext context) =>
              CreateEdeuctionInfoPage(),
        },
        onGenerateRoute: (RouteSettings settings) {},
        onUnknownRoute: (RouteSettings settings) {},
      ),
    );
  }
}
