import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:symphonia_mobile_app/scoped-models/main.dart';
import '../consts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scoped_model/scoped_model.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  final Map<String, dynamic> _formData = {
    'email': null,
    'password': null,
    'checkedValue': false,
  };
  final TextEditingController _passwordTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customPurpleColor,
      body: ListView(
        children: <Widget>[drawArtCurve(), secondPart(context)],
      ),
    );
  }

  Widget drawArtCurve() {
   return Image(
      image: AssetImage('assets/images/IntroTagPage.jpg'),
    );
}

  Widget secondPart(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 14.0, left: 25),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: const Color(0XFFD69E2E),
                  size: 34.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 75),
              child: Text(
                'تسجيل دخول',
                style: TextStyle(
                  fontFamily: ArabicFonts.Harmattan,
                  package: 'google_fonts_arabic',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: const Color(0xff252427),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        _buildEmailTextField(),
                        SizedBox(
                          height: 10.0,
                        ),
                        _buildPasswordTextField(),
                        SizedBox(
                          height: 11.0,
                        ),
                        buildCheckBox(),
                        SizedBox(
                          height: 11.0,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(right: 7),
                              child: Text(
                                'نسيت كلمة المرور؟',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: customPurpleColor,
                                    decorationThickness: 2.0,
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11.0,
                        ),
                        singInButton(context),
                        SizedBox(
                          height: 11.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'البريد الإلكتروني',
          filled: true,
          fillColor: Colors.white),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty ||
            !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
          return 'البريد الأكتروني غير صالح';
        }
      },
      onSaved: (String value) {
        _formData['email'] = value;
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'كلمة المرور', filled: true, fillColor: Colors.white),
      obscureText: true,
      controller: _passwordTextController,
      validator: (String value) {
        if (value.isEmpty || value.length < 6) {
          return 'كلمة المرور غير صالحة';
        }
      },
      onSaved: (String value) {
        _formData['password'] = value;
      },
    );
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
        _formData['checkedValue'] = newValue;
      });

  Widget buildCheckBox() {
    return CheckboxListTile(
      activeColor: customPurpleColor,
      title: Align(
          alignment: Alignment.centerRight, child: Text("حفظ تسجيل الدخول")),
      value: _formData['checkedValue'],
      onChanged: _onRememberMeChanged,
      controlAffinity: ListTileControlAffinity.leading,
      checkColor: Colors.white,
      //  <-- leading Checkbox
    );
  }

  void _submitForm(Function singIn) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    final Map<String, dynamic> successInformation = await singIn(
        _formData['email'], _formData['password'], _formData['checkedValue']);
    if (successInformation['success']) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('فشل تسجيل الدخول!'),
            content: Text(successInformation['message']),
            actions: <Widget>[
              FlatButton(
                child: Text('تأكيد'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    }
  }

  Widget singInButton(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget widget, MainModel model) {
      return model.isLoading
          ? CircularProgressIndicator()
          : GestureDetector(
              onTap: () {
                _submitForm(model.singIn);
              },
              child: Container(
                width: 300.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xff252427),
                ),
                child: Center(
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontFamily: ArabicFonts.El_Messiri,
                      package: 'google_fonts_arabic',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            );
    });
  }
}
