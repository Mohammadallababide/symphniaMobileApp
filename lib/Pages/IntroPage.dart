import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts.dart';
import 'package:google_fonts_arabic/fonts.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: customPurpleColor,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: drawArtCurve(),
            ),
            Transform.translate(
                offset: Offset(0, 0),
                child: secondPart(context)
            ),
          ],
        ),
    );
  }
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
          offset: Offset(0,-2),
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
  return Container(

    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      color: Colors.white,
    ),
    child: Column(
      children: <Widget>[
        // شعار التطبيق
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: drawPurpleReg(),
        ),
        // for كلمة الأفتتاحية للتطبيق ....
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
            intro_stam,
            style: TextStyle(
              fontSize: 14,
              fontFamily: ArabicFonts.El_Messiri,
              fontWeight: FontWeight.bold,
              package: 'google_fonts_arabic',
              color: const Color(0xff252427),
            ),
            textAlign: TextAlign.center,
          ),
        ),

        //   For Singin button ...

        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              singInButton(context),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: singUpButton(context),
              ),
            ],
          ),
        ),
    SizedBox(
          height: 20.0,
  child: Container(color: Colors.white,),
    ),
  ],
  ),
  );
}

//  شعار التطبيق function
Widget drawPurpleReg() {
  return Stack(
    children: <Widget>[
      Container(
        width: 144.0,
        height: 108.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: const Color(0xffac50fc),
        ),
      ),
      SvgPicture.string(
        '<svg viewBox="116.0 298.9 127.2 107.1" ><path transform="translate(115.0, 335.0)" d="M 1 71 L 15.54545593261719 71 L 15.54545593261719 29.00000381469727 L 1 29.00000381469727 L 1 71 Z M 81 32.50000381469727 C 81 28.65000152587891 77.72727203369141 25.5 73.72727203369141 25.5 L 50.78182983398438 25.5 L 54.23637390136719 9.505000114440918 L 54.34546279907227 8.385001182556152 C 54.34546279907227 6.949999809265137 53.72727966308594 5.62000036239624 52.74546432495117 4.675000190734863 L 48.89091873168945 0.9999999403953552 L 24.9636402130127 24.06500053405762 C 23.61818313598633 25.32499694824219 22.81818389892578 27.07500076293945 22.81818389892578 29.00000381469727 L 22.81818389892578 64 C 22.81818389892578 67.84999847412109 26.09091186523438 71 30.09091377258301 71 L 62.81819152832031 71 C 65.83637237548828 71 68.41819763183594 69.25 69.50910186767578 66.73000335693359 L 80.49091339111328 42.05500411987305 C 80.81818389892578 41.25000381469727 81 40.41000366210938 81 39.50000381469727 L 81 32.81500244140625 L 80.96363830566406 32.78000259399414 L 81 32.50000381469727 Z" fill="#e0dbeb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(162.19, 297.94)" d="M 81.00000762939453 1 L 66.45455932617188 1 L 66.45455932617188 43 L 81.00000762939453 43 L 81.00000762939453 1 Z M 1.000007629394531 39.50000381469727 C 1.000007629394531 43.35000610351563 4.272739410400391 46.50000381469727 8.272743225097656 46.50000381469727 L 31.21819496154785 46.50000381469727 L 27.76364707946777 62.49499893188477 L 27.65455627441406 63.61499786376953 C 27.65455627441406 65.04999542236328 28.27273941040039 66.3800048828125 29.25455856323242 67.32499694824219 L 33.10910797119141 71 L 57.03638458251953 47.93500518798828 C 58.3818359375 46.67499923706055 59.18183517456055 44.92500305175781 59.18183517456055 43 L 59.18183517456055 8.000001907348633 C 59.18183517456055 4.149998664855957 55.90911483764648 1 51.90911865234375 1 L 19.18182945251465 1 C 16.16364479064941 1 13.58182144165039 2.750001907348633 12.49091625213623 5.269999504089355 L 1.509096145629883 29.94499778747559 C 1.181825637817383 30.75 1.000007629394531 31.59000015258789 1.000007629394531 32.5 L 1.000007629394531 39.18499755859375 L 1.036372900009155 39.22000885009766 L 1.000007629394531 39.50000381469727 Z" fill="#252427" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
        allowDrawingOutsideViewBox: true,
      ),
    ],
  );
}

Widget singInButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/singin');
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
}

Widget singUpButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/singup');
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
