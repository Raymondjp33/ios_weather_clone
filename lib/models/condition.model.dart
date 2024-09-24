import 'package:json_annotation/json_annotation.dart';

part 'condition.model.g.dart';

@JsonSerializable()
class ConditionModel {
  final String text;
  final String icon;

  ConditionModel({
    required this.text,
    required this.icon,
  });

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionModelToJson(this);
}
