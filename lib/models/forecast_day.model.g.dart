// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastDayModel _$ForecastDayModelFromJson(Map<String, dynamic> json) =>
    ForecastDayModel(
      hour: (json['hour'] as List<dynamic>)
          .map((e) => HourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      day: DayModel.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastDayModelToJson(ForecastDayModel instance) =>
    <String, dynamic>{
      'hour': instance.hour.map((e) => e.toJson()).toList(),
      'day': instance.day.toJson(),
    };
