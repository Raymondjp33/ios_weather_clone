// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zipcode_weather.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZipCodeWeatherModel _$ZipCodeWeatherModelFromJson(Map<String, dynamic> json) =>
    ZipCodeWeatherModel(
      zip: json['zip'] as String,
      weatherModel:
          WeatherModel.fromJson(json['weatherModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ZipCodeWeatherModelToJson(
        ZipCodeWeatherModel instance) =>
    <String, dynamic>{
      'zip': instance.zip,
      'weatherModel': instance.weatherModel.toJson(),
    };
