import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page/about-us.dart';
import 'package:myapp/utils.dart';
import 'choosemode.dart';
import 'profile.dart';
import 'about-us.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    19.89 * fem, 14 * fem, 14.5 * fem, 12 * fem),
                width: double.infinity,
                height: 44 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.fromLTRB(23 * fem, 16 * fem, 24 * fem, 24 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 110 * fem, 24 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Choosemode()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 55 * fem, 0 * fem),
                              width: 46 * fem,
                              height: 46 * fem,
                              child: Image.asset(
                                'assets/page-1/images/back-dBv.png',
                                width: 46 * fem,
                                height: 46 * fem,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Settings Page',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.4700000763 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Text(
                        'Account',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.7999999523 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group427322196AQG (2:718)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14 * fem, 0 * fem),
                            width: 42 * fem,
                            height: 42 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-427322196-B44.png',
                              width: 42 * fem,
                              height: 42 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 212.5 * fem, 1 * fem),
                            child: Text(
                              'Profile',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()),
                              );
                            },
                            child: Container(
                              width: 7 * fem,
                              height: 14 * fem,
                              child: Image.asset(
                                'assets/page-1/images/iconly-light-arrow-right-2-eTA.png',
                                width: 7 * fem,
                                height: 14 * fem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14 * fem, 0 * fem),
                            width: 42 * fem,
                            height: 42 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-427322196-vaC.png',
                              width: 42 * fem,
                              height: 42 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 198.5 * fem, 1 * fem),
                            child: Text(
                              'Address',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            width: 7 * fem,
                            height: 14 * fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-light-arrow-right-2-Q5n.png',
                              width: 7 * fem,
                              height: 14 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14 * fem, 0 * fem),
                            width: 42 * fem,
                            height: 42 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-427322196-MZr.png',
                              width: 42 * fem,
                              height: 42 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 175.5 * fem, 1 * fem),
                            child: Text(
                              'Notification',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            width: 7 * fem,
                            height: 14 * fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-light-arrow-right-2-mKe.png',
                              width: 7 * fem,
                              height: 14 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14 * fem, 0 * fem),
                            width: 42 * fem,
                            height: 42 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-427322196.png',
                              width: 42 * fem,
                              height: 42 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 204.5 * fem, 1 * fem),
                            child: Text(
                              'Privacy',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            width: 7 * fem,
                            height: 14 * fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-light-arrow-right-2-aLG.png',
                              width: 7 * fem,
                              height: 14 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 62 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14 * fem, 0 * fem),
                            width: 42 * fem,
                            height: 42 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-427322196-sQU.png',
                              width: 42 * fem,
                              height: 42 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 198.5 * fem, 1 * fem),
                            child: Text(
                              'Security',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            width: 7 * fem,
                            height: 14 * fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-light-arrow-right-2-JcQ.png',
                              width: 7 * fem,
                              height: 14 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Text(
                        'About Us',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.7999999523 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14 * fem, 0 * fem),
                            width: 42 * fem,
                            height: 42 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-427322196-Mon.png',
                              width: 42 * fem,
                              height: 42 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 193.5 * fem, 1 * fem),
                            child: Text(
                              'About us',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => about_us()),
                              );
                            },
                            child: Container(
                              width: 7 * fem,
                              height: 14 * fem,
                              child: Image.asset(
                                'assets/page-1/images/iconly-light-arrow-right-2.png',
                                width: 7 * fem,
                                height: 14 * fem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          122 * fem, 0 * fem, 19 * fem, 98 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 155 * fem, 0 * fem),
                            width: 16 * fem,
                            height: 16 * fem,
                            child: Image.asset(
                              'assets/page-1/images/card-1.png',
                              width: 16 * fem,
                              height: 16 * fem,
                            ),
                          ),
                          Container(
                            width: 16 * fem,
                            height: 16 * fem,
                            child: Image.asset(
                              'assets/page-1/images/card-2.png',
                              width: 16 * fem,
                              height: 16 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: 327 * fem,
                      height: 60 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xfffd9340)),
                        borderRadius: BorderRadius.circular(30.5 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Log Out',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.7999999523 * ffem / fem,
                            color: Color(0xfffd9340),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
