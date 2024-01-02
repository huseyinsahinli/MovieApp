import 'package:json_annotation/json_annotation.dart';

part 'dates_model.g.dart';

@JsonSerializable()
class DatesModel {
  DatesModel(this.maximum, this.minimum);

  factory DatesModel.fromJson(Map<String, dynamic> json) => _$DatesModelFromJson(json);
  Map<String, dynamic> toJson() => _$DatesModelToJson(this);
  final String? maximum, minimum;
}
