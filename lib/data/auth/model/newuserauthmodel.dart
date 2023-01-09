import 'package:json_annotation/json_annotation.dart';

part 'newuserauthmodel.g.dart';

@JsonSerializable()
class NewUser{
  final String phone, type, hash;

  NewUser({required this.phone, required this.type, required this.hash});

  factory NewUser.fromJson(Map<String,dynamic> json) => _$NewUserFromJson(json);
  Map<String,dynamic> toJson() => _$NewUserToJson(this);
}