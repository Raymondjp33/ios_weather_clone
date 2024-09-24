import 'package:json_annotation/json_annotation.dart';

import 'forecast_day.model.dart';

part 'forecast.model.g.dart';

@JsonSerializable()
class ForecastModel {
  @JsonKey(name: 'forecastday')
  List<ForecastDayModel> forecastDay;

  ForecastModel({required this.forecastDay});

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}
