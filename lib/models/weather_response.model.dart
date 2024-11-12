import 'package:json_annotation/json_annotation.dart';

import 'current.model.dart';
import 'forecast.model.dart';
import 'hour.model.dart';
import 'location.model.dart';

part 'weather_response.model.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherModel {
  final LocationModel location;
  final CurrentModel current;
  final ForecastModel forecast;

  WeatherModel({
    required this.location,
    required this.current,
    required this.forecast,
  });

  List<HourModel> get hoursDetails => forecast.forecastDay.first.hour;
  List<HourModel> get hoursDetailsAfterNow => forecast.forecastDay.first.hour
      .where((e) => e.timeAsDateTime.isAfter(DateTime.now()))
      .toList();

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
