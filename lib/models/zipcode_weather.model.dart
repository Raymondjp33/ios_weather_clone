import 'package:json_annotation/json_annotation.dart';

import 'weather_response.model.dart';

part 'zipcode_weather.model.g.dart';

@JsonSerializable(explicitToJson: true)
class ZipCodeWeatherModel {
  final String zip;
  final WeatherModel weatherModel;

  ZipCodeWeatherModel({
    required this.zip,
    required this.weatherModel,
  });

  Map<String, dynamic> toJson() => _$ZipCodeWeatherModelToJson(this);
}
