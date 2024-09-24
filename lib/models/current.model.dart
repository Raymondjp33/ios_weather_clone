import 'package:json_annotation/json_annotation.dart';

import 'condition.model.dart';
part 'current.model.g.dart';

@JsonSerializable()
class CurrentModel {
  @JsonKey(name: 'temp_f')
  final double tempF;
  final ConditionModel condition;

  CurrentModel({required this.tempF, required this.condition});

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentModelToJson(this);
}
