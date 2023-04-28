import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';
import 'package:myapp/service/weather_service.dart';
import 'package:myapp/service/weather.dart';
import 'package:location/location.dart';
import 'package:myapp/page/choosemode.dart';
import 'package:geocoding/geocoding.dart';

class User_location extends StatefulWidget {
  @override
  _User_locationState createState() => _User_locationState();
}

class _User_locationState extends State<User_location> {
  WeatherService weatherService = WeatherService();
  Weather weather = Weather();
  String location = "Your current location ";
  String currentWeather = "🤷‍♀️";
  double tempC = 0;
  double tempF = 0;
  late Position position;

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (serviceEnabled == false) {
      return Future.error("Location services are disabled");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied) {
      return Future.error("Location permission denied");
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          "Location permission is permanently denied, please enable it in settings");
    }

    position = await Geolocator.getCurrentPosition();
    print(position.latitude);
    print(position.longitude);
    return position;
  }

  Future<String> getPlaceName(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      Placemark place = placemarks[0];
      return "${place.locality}, ${place.country}";
    } catch (e) {
      print("Error getting place name: $e");
      return "Your current location";
    }
  }

  void getWeather() async {
    try {
      position = await _determinePosition();
      weather = await weatherService.getWeatherDataLatLong(
          position.latitude, position.longitude);

      String placeName =
          await getPlaceName(position.latitude, position.longitude);

      setState(() {
        location = placeName;
        currentWeather = weather.condition;
        tempF = weather.temperatureF;
        tempC = weather.temperatureC;
      });

      print(weather.temperatureC);
      print(weather.temperatureF);
      print(weather.condition);
    } catch (e) {
      setState(() {
        location = "Unknown location";
        currentWeather = "cloudy ";
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
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: SingleChildScrollView(
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
                      24 * fem, 16 * fem, 18 * fem, 194 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
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
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 24 * fem),
                        width: 327 * fem,
                        height: 311 * fem,
                        child: Image.asset(
                          'assets/page-1/images/auto-group-styg.png',
                          width: 327 * fem,
                          height: 311 * fem,
                        ),
                      ),
                      Container(
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
                              currentWeather,
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
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          print('Overall weather button pressed');
                          try {
                            position = await _determinePosition();
                            if (position != null) {
                              setState(() {
                                getWeather();
                              });
                            }
                          } catch (e) {
                            print('Error getting location: $e');
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xfffd9340)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(30.5 * fem)),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              6 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 327 * fem,
                          height: 60 * fem,
                          child: Center(
                            child: Text(
                              'Overall weather',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
