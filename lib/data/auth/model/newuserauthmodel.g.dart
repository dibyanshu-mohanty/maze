// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newuserauthmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewUser _$NewUserFromJson(Map<String, dynamic> json) => NewUser(
      phone: json['phone'] as String,
      type: json['type'] as String,
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$NewUserToJson(NewUser instance) => <String, dynamic>{
      'phone': instance.phone,
      'type': instance.type,
      'hash': instance.hash,
    };
