import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts.dart';
import 'package:google_fonts_arabic/fonts.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final Map<String, dynamic> _formData = {
    'email': null,
    'password': null
  };
  final TextEditingController _passwordTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _emailValue;
  String _passwordValue;
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      backgroundColor: customPurpleColor,
      body: ListView(
        children: <Widget>[
          drawArtCurve(),
          secondPart(context)
        ],
      ),
    );
  }

  Widget drawArtCurve() {
    return Container(
      height: 270.0,
      color: customPurpleColor,
      child: Stack(
        children: <Widget>[
          Center(
            child: Transform.translate(
              offset: Offset(10, -23),
              child: SvgPicture.string(
                svg_curve,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -2),
            child: Center(
              child: Text(
                app_name,
                style: TextStyle(
                  fontFamily: ArabicFonts.El_Messiri,
                  package: 'google_fonts_arabic',
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
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
                'إنشاء حساب',
                style: TextStyle(
                  fontFamily: ArabicFonts.Lateef,
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
                          height: 10.0,
                        ),
                        _buildPasswordConfirmTextField(),
                        SizedBox(
                          height: 10.0,
                        ),
                        singUpButton(context),
                        SizedBox(
                          height: 10.0,
                        )
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
          labelText: 'البريد الإلكتروني', filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty ||
            !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
          return 'Please enter a valid email';
        }
      },
      onSaved: (String value) {
//        _formData['email'] = value;
      },
    );
  }


  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password', filled: true, fillColor: Colors.white),
      obscureText: true,
      controller: _passwordTextController,
      validator: (String value) {
        if (value.isEmpty || value.length < 6) {
          return 'Password invalid';
        }
      },
      onSaved: (String value) {
//        _formData['password'] = value;
      },
    );
  }

  Widget _buildPasswordConfirmTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Confirm Password', filled: true, fillColor: Colors.white),
      obscureText: true,
      validator: (String value) {
        if (_passwordTextController.text != value) {
          return 'Passwords do not match.';
        }
      },
    );
  }

  void _submitForm(){
    if (!_formKey.currentState.validate() || !_formData['acceptTerms']) {
      return;
    }
    _formKey.currentState.save();
  }

  Widget singUpButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
//        Navigator.pushNamed(context, '/singup');
        _submitForm();
      },
      child: Container(
        width: 300.0,
        height: 55.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 3.0,
            color: const Color(0xff252427),
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            'إنشاء حساب',
            style: TextStyle(
              fontFamily: ArabicFonts.El_Messiri,
              package: 'google_fonts_arabic',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),

    );
  }

}


