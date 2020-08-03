import 'package:flutter/material.dart';
import 'package:symphonia_mobile_app/Pages/IntroPage.dart';
import 'package:symphonia_mobile_app/Pages/SingInPage.dart';
import './Pages/SingupPage.dart';
import 'Pages/AuthPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (BuildContext context) => IntroPage(),
        '/singin': (BuildContext context) => SingInPage(),
        '/singup':(BuildContext context) => SingUpPage(),
        '/auth':(BuildContext context)=>AuthPage()
      },
      onGenerateRoute: (RouteSettings settings) {},
      onUnknownRoute: (RouteSettings settings) {},
    );
  }
}
