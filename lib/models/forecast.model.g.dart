// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) =>
    ForecastModel(
      forecastDay: (json['forecastday'] as List<dynamic>)
          .map((e) => ForecastDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastModelToJson(ForecastModel instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastDay.map((e) => e.toJson()).toList(),
    };
