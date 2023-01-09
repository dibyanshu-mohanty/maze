// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signeduserauthmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignedUser _$SignedUserFromJson(Map<String, dynamic> json) => SignedUser(
      message: json['message'] as String,
      details: json['details'] as String,
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$SignedUserToJson(SignedUser instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
