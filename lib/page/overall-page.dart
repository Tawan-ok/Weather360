import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:location/location.dart';
import 'package:myapp/service/weather.dart';
import 'package:myapp/service/weather_service.dart';
import 'choosemode.dart';

class Overall extends StatefulWidget {
  @override
  _OverallState createState() => _OverallState();
}

class _OverallState extends State<Overall> {
  WeatherService weatherService = WeatherService();
  Weather weather = Weather();

  String currentWeather = "";
  double tempC = 0;
  double tempF = 0;
  String location = " ";
  String imagePath = 'assets/page-1/images/auto-group-9tcp.png';

  final TextEditingController _locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  String getImageAsset(String currentWeather) {
    if (currentWeather == 'Sunny') {
      return 'assets/page-1/images/Sunny.png';
    } else if (currentWeather == 'Clear') {
      return 'assets/page-1/images/clear.png';
    } else if (currentWeather == 'Overcast') {
      return 'assets/page-1/images/Overcast.png';
    } else if (currentWeather.contains('cloudy') ||
        currentWeather.contains('Cloudy')) {
      return 'assets/page-1/images/Partly_Cloudy.png';
    } else if (currentWeather.contains('rain') ||
        currentWeather.contains('Rain')) {
      return 'assets/page-1/images/Light_rain.png';
    } else if (currentWeather.contains('snow') ||
        currentWeather.contains('Snow')) {
      return 'assets/page-1/images/snow.png';
    } else if (currentWeather.contains('Mist') ||
        currentWeather.contains('Fog') ||
        currentWeather.contains('Haze')) {
      return 'assets/page-1/images/mist.png';
    } else if (currentWeather.contains('freezing') ||
        currentWeather.contains('Freezing')) {
      return 'assets/page-1/images/Freezing.png';
    } else if (currentWeather.contains('tonado') ||
        currentWeather.contains('Tonado')) {
      return 'assets/page-1/images/Tonado.png';
    } else {
      return 'assets/page-1/images/auto-group-9tcp.png';
    }
  }

  void getWeather() async {
    try {
      weather = await weatherService.getWeatherData(location);

      setState(() {
        currentWeather = weather.condition;
        tempF = weather.temperatureF;
        tempC = weather.temperatureC;
        imagePath = getImageAsset(weather.condition);
      });
      print(weather.temperatureC);
      print(weather.temperatureF);
      print(weather.condition);
    } catch (e) {
      setState(() {
        currentWeather = " ";
        tempF = 0;
        tempC = 0;
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: SingleChildScrollView(
        child: Container(
          // overallpagebuA (2:999)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // topbarstatus99z (2:1000)
                  padding: EdgeInsets.fromLTRB(
                      19.89 * fem, 14 * fem, 14.5 * fem, 12 * fem),
                  width: double.infinity,
                  height: 44 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                ),
                Container(
                  // autogrouplc32RfE (43afwxSu3ThkeM9R3aLc32)
                  padding: EdgeInsets.fromLTRB(
                      24 * fem, 16 * fem, 18 * fem, 194 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupka6l9LL (43afgJEKhC3R6jS5VHKa6L)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 24 * fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Choosemode()),
                                );
                              },
                              child: Container(
                                // back5Dz (2:1002)
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
                              // overallweatherbCL (2:1001)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 53 * fem, 0 * fem),
                              child: Text(
                                'Overall Weather',
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
                            Container(
                              // love6un (2:1005)
                              width: 46 * fem,
                              height: 46 * fem,
                              child: Image.asset(
                                'assets/page-1/images/love-eDW.png',
                                width: 46 * fem,
                                height: 46 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroup9tcpSik (43afosr2Wx2Y6JTGVo9tcp)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 24 * fem),
                        width: 327 * fem,
                        height: 311 * fem,
                        child: Image.asset(
                          imagePath,
                          width: 327 * fem,
                          height: 311 * fem,
                        ),
                      ),
                      Container(
                        // bangkoktoday9dA (2:1011)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          location.isNotEmpty
                              ? '$location today'
                              : 'Enter location',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1000000238 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              currentWeather + '🌡',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.6000000636 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              tempC.toString() + '°C',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.6000000636 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              tempF.toString() + '°F',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.6000000636 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // component7Nkp (2:1015)
                        margin: EdgeInsets.fromLTRB(
                            6 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 327 * fem,
                        height:
                            120 * fem, // Adjust the height to fit the content
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 40),
                                TextField(
                                  controller: _locationController,
                                  decoration: InputDecoration(
                                    labelText: 'Enter location',
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (value) {
                                    location = value;
                                  },
                                  onSubmitted: (value) {
                                    setState(() {
                                      location = value;
                                      getWeather();
                                    });
                                  },
                                ),
                              ],
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
      ),
    );
  }
}
