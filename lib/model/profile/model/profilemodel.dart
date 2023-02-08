
import 'package:json_annotation/json_annotation.dart';

part 'profilemodel.g.dart';

@JsonSerializable()
class ProfileModel{
  final String name, email, dob, gender;
  ProfileModel({required this.name,required this.gender, required this.email, required this.dob});
  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
  Map<String,dynamic> toJson() => _$ProfileModelToJson(this);
}