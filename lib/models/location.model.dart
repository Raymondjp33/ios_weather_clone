import 'package:json_annotation/json_annotation.dart';

part 'location.model.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationModel {
  final String name;

  LocationModel({
    required this.name,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
