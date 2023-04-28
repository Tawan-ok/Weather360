import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'settings-page.dart';

class Profile extends StatelessWidget {
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
                    EdgeInsets.fromLTRB(20 * fem, 16 * fem, 24 * fem, 10 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          4 * fem, 0 * fem, 130 * fem, 33 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => setting()),
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
                              'Account',
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
                          117 * fem, 0 * fem, 16 * fem, 16 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 12 * fem, 74 * fem, 0 * fem),
                            width: 100 * fem,
                            height: 100 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50 * fem),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/rectangle-bg.png',
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 76 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 24 * fem,
                                      height: 24 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12 * fem),
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 82 * fem,
                                  top: 2.0095825195 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 12 * fem,
                                      height: 11.8 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/iconly-light-edit.png',
                                        width: 12 * fem,
                                        height: 11.8 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 24 * fem,
                            height: 24 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12 * fem),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          89 * fem, 0 * fem, 0 * fem, 23 * fem),
                      child: Text(
                        'Fuji_Osakaboii',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 15.99 * fem),
                      child: Text(
                        'Name',
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
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 7.23 * fem),
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 20 * fem, 24 * fem, 19 * fem),
                      width: 327 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffe5e4e3)),
                        borderRadius: BorderRadius.circular(16 * fem),
                      ),
                      child: Text(
                        'Fuji Kaze',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffb3b1b0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 17.77 * fem),
                      child: Text(
                        'Username',
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
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 5.45 * fem),
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 20 * fem, 24 * fem, 19 * fem),
                      width: 327 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffe5e4e3)),
                        borderRadius: BorderRadius.circular(16 * fem),
                      ),
                      child: Text(
                        'Fuji_Osakaboii',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffb3b1b0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 19.55 * fem),
                      child: Text(
                        'Email',
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
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 122.01 * fem),
                      padding: EdgeInsets.fromLTRB(
                          24 * fem, 20 * fem, 24 * fem, 19 * fem),
                      width: 327 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffe5e4e3)),
                        borderRadius: BorderRadius.circular(16 * fem),
                      ),
                      child: Text(
                        'Fuji.kaz@gmail.com',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffb3b1b0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          4 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: 327 * fem,
                      height: 60 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xfffd9340),
                        borderRadius: BorderRadius.circular(30.5 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Save Changes',
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
