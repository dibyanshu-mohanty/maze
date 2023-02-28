// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learningmodulemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LearningModuleModel _$LearningModuleModelFromJson(Map<String, dynamic> json) =>
    LearningModuleModel(
      name: json['name'] as String,
      description: json['description'] as String,
      imageName: json['imageName'] as String? ?? "",
      id: json['id'] as String,
      index: json['index'] as int,
      unlocked: json['unlocked'] as bool,
    );

Map<String, dynamic> _$LearningModuleModelToJson(
        LearningModuleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageName': instance.imageName,
      'index': instance.index,
      'unlocked': instance.unlocked,
    };
