import 'package:json_annotation/json_annotation.dart';

import 'day.model.dart';
import 'hour.model.dart';

part 'forecast_day.model.g.dart';

@JsonSerializable()
class ForecastDayModel {
  List<HourModel> hour;
  DayModel day;

  ForecastDayModel({required this.hour, required this.day});

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayModelToJson(this);
}
