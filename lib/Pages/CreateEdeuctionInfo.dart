import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'dart:async';

import '../consts.dart';

class CreateEdeuctionInfoPage extends StatefulWidget {
  @override
  _CreateEdeuctionInfoPageState createState() =>
      _CreateEdeuctionInfoPageState();
}

class _CreateEdeuctionInfoPageState extends State<CreateEdeuctionInfoPage> {
  String _selectuniversitySpceificValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customPurpleColor,
      body: ListView(
        children: <Widget>[
          drawArtCurve(),
          secondPart(context),
        ],
      ),
    );
  }

  Widget drawArtCurve() {
    return Image(
      image: AssetImage('assets/images/image1.jpg'),
    );
  }

  Widget secondPart(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 30.0),
              child: Text(
                '2/4',
                style: TextStyle(
                  fontFamily: ArabicFonts.Changa,
                  package: 'google_fonts_arabic',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: const Color(0xff581207),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10.0),
              child: Text(
                'إنشاء صفحة شخصية',
                style: TextStyle(
                  fontFamily: ArabicFonts.Harmattan,
                  package: 'google_fonts_arabic',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: const Color(0xff252427),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 30.0),
              child: Text(
                'معلومات التحصيل العلمي',
                style: TextStyle(
                  fontFamily: ArabicFonts.Harmattan,
                  package: 'google_fonts_arabic',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: const Color(0xff68511A),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: const Color(0xff252427),
                    style: BorderStyle.solid,
                    width: 0.80),
              ),
              child: GestureDetector(
                // child: ,
                onTap: () => showUniversitySpecificDialog(),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  Future<void> showUniversitySpecificDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('تحديد الاختصاص الجامعي'),
            content: SingleChildScrollView(
              child: ListBody(
                children: listOfGender(universitySpecificList),
              ),
            ),
          );
        });
  }

  List<Widget> listOfGender(List<String> list) {
    List listings = List<Widget>();
    for (String item in list) {
      listings.add(
        ListTile(
          title: Text(item),
          onTap: () {
            setState(
              () {
                _selectuniversitySpceificValue = item;
              },
            );
            Navigator.of(context).pop();
          },
        ),
      );
    }
    return listings;
  }
}
