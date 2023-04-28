import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'weather.dart';

class WeatherService {
  //search
  Future<Weather> getWeatherData(String place) async {
    try {
      final queryParameters = {
        'key': 'e54d4cc837854e7a816174239231404',
        'q': place,
      };

      final uri =
          Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        return Weather.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Can not got weather");
      }
    } catch (e) {
      rethrow;
    }
  }

//user location
  Future<Weather> getWeatherDataLatLong(double lat, double long) async {
    try {
      String latlong = "$lat,$long";
      final queryParameters = {
        'key': 'e54d4cc837854e7a816174239231404',
        'q': latlong,
      };

      final uri =
          Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        return Weather.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Can not got weather");
      }
    } catch (e) {
      rethrow;
    }
  }
}
