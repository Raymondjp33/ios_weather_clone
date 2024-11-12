// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayModel _$DayModelFromJson(Map<String, dynamic> json) => DayModel(
      maxTempF: (json['maxtemp_f'] as num).toDouble(),
      minTempF: (json['mintemp_f'] as num).toDouble(),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayModelToJson(DayModel instance) => <String, dynamic>{
      'maxtemp_f': instance.maxTempF,
      'mintemp_f': instance.minTempF,
      'condition': instance.condition.toJson(),
    };
