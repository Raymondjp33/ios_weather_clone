import 'weather_response.model.dart';

class ZipCodeWeatherModel {
  final String zip;
  final WeatherModel weatherModel;

  ZipCodeWeatherModel({
    required this.zip,
    required this.weatherModel,
  });
}
