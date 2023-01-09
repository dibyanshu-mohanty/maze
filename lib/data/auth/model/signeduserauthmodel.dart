
import 'package:json_annotation/json_annotation.dart';

part 'signeduserauthmodel.g.dart';

@JsonSerializable()
class SignedUser{
  final String message, details, token, refreshToken;
  SignedUser({required this.message, required this.details, required this.token, required this.refreshToken});

  factory SignedUser.fromJson(Map<String,dynamic> json) => _$SignedUserFromJson(json);

  Map<String,dynamic> toJson() => _$SignedUserToJson(this);
}