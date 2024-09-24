import 'dart:convert';

import '../models/weather_response.model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static String _weatherEndpoint(String zip) =>
      'https://api.weatherapi.com/v1/forecast.json?key=78b69989d8d145528da153537241309&q=$zip&days=7';

  static Future<WeatherModel?> fetchWeatherModel(String zip) async {
    try {
      final response =
          json.decode((await http.get(Uri.parse(_weatherEndpoint(zip)))).body);

      if (response['error'] != null) {
        return null;
      }

      return WeatherModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }
}
