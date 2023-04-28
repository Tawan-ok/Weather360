import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'choosemode.dart';
import 'overall-page.dart';
import 'about-us.dart';
import 'login.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(0 * fem, 6 * fem, 0 * fem, 140 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 36 * fem),
              padding: EdgeInsets.fromLTRB(
                  19.89 * fem, 12.09 * fem, 14.5 * fem, 10.36 * fem),
              width: double.infinity,
              height: 38 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
            ),
            Container(
              // weather3602he (1:108)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
              child: Text(
                'Weather 360',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.4 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroups3tviKa (43aXn7E7esjCDeSp77S3Tv)
              margin:
                  EdgeInsets.fromLTRB(48 * fem, 0 * fem, 50 * fem, 54 * fem),
              padding:
                  EdgeInsets.fromLTRB(18 * fem, 37 * fem, 26 * fem, 53 * fem),
              width: double.infinity,
              height: 273 * fem,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/page-1/images/ellipse-1.png',
                  ),
                ),
              ),
            ),
            Container(
              // gettoknowmoreaboutweatherhelpy (1:106)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 41 * fem),
              constraints: BoxConstraints(
                maxWidth: 302 * fem,
              ),
              child: Text(
                'Get to know more about weather, help you  plan a trip or everything use WEATHER360!',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginApp(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          24 * fem, 0 * fem, 24 * fem, 0 * fem),
                      width: double.infinity,
                      height: 76 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xfffd9340),
                        borderRadius: BorderRadius.circular(30.5 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.7999999523 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
