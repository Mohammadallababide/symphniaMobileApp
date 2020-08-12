import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts.dart';
import 'package:google_fonts_arabic/fonts.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final Map<String, dynamic> _formData = {
    'ActivateCode': null,
  };
  final TextEditingController _passwordTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _acticatedCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customPurpleColor,
      body: ListView(
        children: <Widget>[drawArtCurve(), secondPart(context)],
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
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Text(
                'مرحلة تأكيد الحساب',
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

            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 120.0),
                    child: Text(
                      auth_stam,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: ArabicFonts.Harmattan,
                        fontWeight: FontWeight.bold,
                        package: 'google_fonts_arabic',
                        color: const Color(0xff746565),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 4.0,
                          color: const Color(0xffAC50FC),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'شيفرة التفعيل',
                            filled: true,
                            fillColor: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/cr_generalInfo');
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
                            'تأكيد شيفرة التفعيل',
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
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 7.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '!!لم يرسل إلي أي كود تفغيل',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: ArabicFonts.Baloo_Bhaijaan,
//                          fontWeight: FontWeight.bold,
                          package: 'google_fonts_arabic',
                          color: const Color(0xff746565),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 220.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xff23A582),
                          ),
                          child: Center(
                            child: Text(
                              'إعادة إرسال كود التفعيل',
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
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),

//            Padding(
//              padding: const EdgeInsets.only(top: 110),
//              child: Center(
//                child: SingleChildScrollView(
//                  child: Form(
//                    key: _formKey,
//                    child: Column(
//                      children: <Widget>[
//                        _buildEmailTextField(),
//                        SizedBox(
//                          height: 10.0,
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ),
//            )
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
//        _formData['email'] = value;
      },
    );
  }

  void _submitForm() {
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
          color: Colors.black,
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
