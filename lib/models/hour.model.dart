import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import 'condition.model.dart';

part 'hour.model.g.dart';

@JsonSerializable(explicitToJson: true)
class HourModel {
  @JsonKey(name: 'time_epoch')
  final int timeEpoch;
  final String time;
  @JsonKey(name: 'temp_f')
  final double tempF;
  final ConditionModel condition;

  HourModel({
    required this.timeEpoch,
    required this.time,
    required this.tempF,
    required this.condition,
  });

  String get timeFormatted => DateFormat('ha').format(timeAsDateTime);
  DateTime get timeAsDateTime => DateTime.parse(time);

  factory HourModel.fromJson(Map<String, dynamic> json) =>
      _$HourModelFromJson(json);

  Map<String, dynamic> toJson() => _$HourModelToJson(this);
}
