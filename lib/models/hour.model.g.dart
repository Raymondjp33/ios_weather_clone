// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourModel _$HourModelFromJson(Map<String, dynamic> json) => HourModel(
      timeEpoch: (json['time_epoch'] as num).toInt(),
      time: json['time'] as String,
      tempF: (json['temp_f'] as num).toDouble(),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourModelToJson(HourModel instance) => <String, dynamic>{
      'time_epoch': instance.timeEpoch,
      'time': instance.time,
      'temp_f': instance.tempF,
      'condition': instance.condition.toJson(),
    };
