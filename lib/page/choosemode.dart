import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'user-location-page.dart';
import 'overall-page.dart';
import 'settings-page.dart';

class Choosemode extends StatelessWidget {
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
                padding: EdgeInsets.fromLTRB(
                    24 * fem, 16 * fem, 16 * fem, 231 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 51 * fem),
                      width: double.infinity,
                      height: 48 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 100 * fem, 0 * fem),
                            width: 189 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 120.08 * fem, 4 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10.08 * fem, 0 * fem),
                                        child: Text(
                                          'Location',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffb3b1b0),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        width: 5.83 * fem,
                                        height: 2.92 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/iconly-light-arrow-down-2.png',
                                          width: 5.83 * fem,
                                          height: 2.92 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Bangkok, Siam Paragon',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6000000238 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => setting()),
                              );
                            },
                            child: Container(
                              width: 46 * fem,
                              height: 46 * fem,
                              child: Image.asset(
                                'assets/page-1/images/search.png',
                                width: 46 * fem,
                                height: 46 * fem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 8 * fem, 20 * fem),
                      width: 327 * fem,
                      height: 139 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              width: 327 * fem,
                              height: 139 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xfffd9340),
                                borderRadius: BorderRadius.circular(24 * fem),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 327 * fem,
                                  height: 139 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mask-group.png',
                                    width: 327 * fem,
                                    height: 139 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 155 * fem,
                            top: 29 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 93 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'Weather 360',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 156 * fem,
                            top: 51 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 158 * fem,
                                height: 32 * fem,
                                child: Text(
                                  'Everything about weather trust weather 360',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2999999523 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 7 * fem, 26 * fem),
                      child: Text(
                        'MODE',
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
                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                      width: double.infinity,
                      height: 162 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 15 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                34 * fem, 37.88 * fem, 35 * fem, 18 * fem),
                            width: 156 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xfff7f7f7),
                              borderRadius: BorderRadius.circular(24 * fem),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Overall()),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        1 * fem, 0 * fem, 0 * fem, 12.88 * fem),
                                    width: 59.59 * fem,
                                    height: 63.25 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/weather-cold-temperature.png',
                                      width: 59.59 * fem,
                                      height: 63.25 * fem,
                                    ),
                                  ),
                                  Text(
                                    'OVERALL',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => User_location()),
                              );
                            },
                            borderRadius: BorderRadius.circular(24 * fem),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  28 * fem, 40.63 * fem, 20 * fem, 18 * fem),
                              width: 156 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfff7f7f7),
                                borderRadius: BorderRadius.circular(24 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.07 * fem,
                                        0 * fem, 0 * fem, 15.62 * fem),
                                    width: 30.07 * fem,
                                    height: 57.75 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/weather-high-temperature.png',
                                      width: 30.07 * fem,
                                      height: 57.75 * fem,
                                    ),
                                  ),
                                  Text(
                                    'Your Place',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
