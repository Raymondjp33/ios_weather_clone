import 'package:json_annotation/json_annotation.dart';

import 'hour.model.dart';

part 'forecast_day.model.g.dart';

@JsonSerializable()
class ForecastDayModel {
  List<HourModel> hour;

  ForecastDayModel({required this.hour});

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayModelToJson(this);
}
