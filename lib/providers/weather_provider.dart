import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/weather_response.model.dart';

class WeatherProvider extends ChangeNotifier {
  String forecastEndpoint(String zip) =>
      'https://api.weatherapi.com/v1/forecast.json?key=78b69989d8d145528da153537241309&q=$zip&days=1';
  String zipCode = '';

  WeatherModel? weatherModel;

  void setZipcode(String value) {
    zipCode = value;
    notifyListeners();
  }

  Future<void> callWeatherApi() async {
    Map<String, dynamic> forecast = json
        .decode((await http.get(Uri.parse(forecastEndpoint(zipCode)))).body);

    weatherModel = WeatherModel.fromJson(forecast);

    notifyListeners();
  }
}
