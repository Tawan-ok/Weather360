import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page/homepage.dart';
import 'package:myapp/page/choosemode.dart';
import 'package:myapp/page/settings-page.dart';
import 'package:myapp/page/about-us.dart';
import 'package:myapp/page/profile.dart';
import 'package:myapp/page/overall-page.dart';
import 'package:myapp/page/user-location-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Homepage(),
        ),
      ),
    );
  }
}
