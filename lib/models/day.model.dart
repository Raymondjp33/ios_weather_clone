import 'package:json_annotation/json_annotation.dart';

import 'condition.model.dart';

part 'day.model.g.dart';

@JsonSerializable()
class DayModel {
  @JsonKey(name: 'maxtemp_f')
  final double maxTempF;
  @JsonKey(name: 'mintemp_f')
  final double minTempF;
  final ConditionModel condition;

  DayModel({
    required this.maxTempF,
    required this.minTempF,
    required this.condition,
  });

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      _$DayModelFromJson(json);

  Map<String, dynamic> toJson() => _$DayModelToJson(this);
}
