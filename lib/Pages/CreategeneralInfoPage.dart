import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../consts.dart';
import 'package:google_fonts_arabic/fonts.dart';

class CreateGeneralInfoPage extends StatefulWidget {
  @override
  _CreateGeneralInfoPageState createState() => _CreateGeneralInfoPageState();
}

class _CreateGeneralInfoPageState extends State<CreateGeneralInfoPage> {
  String _selectBrithDateValue;
  String _selectNationalityValue;
  String _selectGenederValue;
  DateTime selectedDate;
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
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 30.0),
                child: Text(
                  '1/4',
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
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20.0),
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
            Padding(
              padding: const EdgeInsets.only(top: 85, left: 96.0),
              child: Text(
                'معلومات عامة',
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
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: customPurpleColor,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 100.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(top: 240, right: 100),
                child: Icon(
                  Icons.mode_edit,
                  size: 30.0,
                  color: const Color(0xff4E5154),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 280,
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 320,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 0.80,
                              color: const Color(0xff252427),
                              style: BorderStyle.solid,
                            ),
                          ),
                          labelText: 'الاسم الكامل',
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          // contentPadding: EdgeInsets.all(18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
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
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: MediaQuery.of(context)
                                          .copyWith()
                                          .size
                                          .height /
                                      3,
                                  child: ListView(
                                    children: listOfBrithDate(provinces),
                                  ),
                                );
                              });
                        },
                        child: _selectBrithDateValue == null
                            ? Transform.translate(
                                offset: Offset(0, 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('المحافظة الحالية ضمن سوريا'),
                                ),
                              )
                            : Transform.translate(
                                offset: Offset(0, 16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    _selectBrithDateValue,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
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
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext builder) {
                                return Container(
                                  height: MediaQuery.of(context)
                                          .copyWith()
                                          .size
                                          .height /
                                      3,
                                  child: CupertinoDatePicker(
                                    initialDateTime: new DateTime(2000, 12, 30),
                                    onDateTimeChanged: (DateTime newdate) {
                                      setState(() {
                                        selectedDate = newdate;
                                      });
                                    },
                                    use24hFormat: true,
                                    maximumDate: new DateTime(2000, 12, 30),
                                    minimumYear: 1950,
                                    maximumYear: 2000,
                                    minuteInterval: 1,
                                    mode: CupertinoDatePickerMode.date,
                                  ),
                                );
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Transform.translate(
                            offset: Offset(0, 16),
                            child: selectedDate == null
                                ? Text(
                                    'تاريخ الميلاد',
                                    style: TextStyle(
                                      color: const Color(0xffA5A3A3),
                                    ),
                                  )
                                : Text(
                                    '${selectedDate.year} : ${selectedDate.month} : ${selectedDate.day} ',
                                  ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
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
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: MediaQuery.of(context)
                                          .copyWith()
                                          .size
                                          .height /
                                      4,
                                  child: ListView(
                                    children: listOfNationality(nationality),
                                  ),
                                );
                              });
                        },
                        child: _selectNationalityValue == null
                            ? Transform.translate(
                                offset: Offset(0, 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('تحديد الجنسية'),
                                ),
                              )
                            : Transform.translate(
                                offset: Offset(0, 16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    _selectNationalityValue,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
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
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: MediaQuery.of(context)
                                          .copyWith()
                                          .size
                                          .height /
                                      6,
                                  child: ListView(
                                    children: listOfGender(genderList),
                                  ),
                                );
                              });
                        },
                        child: _selectGenederValue == null
                            ? Transform.translate(
                                offset: Offset(0, 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('تحديد الجنس'),
                                ),
                              )
                            : Transform.translate(
                                offset: Offset(0, 16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    _selectGenederValue,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    continueButton(context),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> listOfBrithDate(List<String> list) {
    List listings = List<Widget>();
    for (String item in list) {
      listings.add(
        ListTile(
          title: Text(item),
          onTap: () {
            setState(
              () {
                _selectBrithDateValue = item;
              },
            );
            Navigator.of(context).pop();
          },
        ),
      );
    }
    return listings;
  }

  List<Widget> listOfNationality(List<String> list) {
    List listings = List<Widget>();
    for (String item in list) {
      listings.add(
        ListTile(
          title: Text(item),
          onTap: () {
            setState(
              () {
                _selectNationalityValue = item;
              },
            );
            Navigator.of(context).pop();
          },
        ),
      );
    }
    return listings;
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
                _selectGenederValue = item;
              },
            );
            Navigator.of(context).pop();
          },
        ),
      );
    }
    return listings;
  }

  Widget continueButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // todo navigate to eduction info page
        // Navigator.pushNamed(context, '/singin');
      },
      child: Container(
        height: 60,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xff252427),
        ),
        child: Center(
          child: Text(
            'تابع',
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
  }
}
