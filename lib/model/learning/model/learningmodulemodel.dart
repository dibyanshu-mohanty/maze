

import 'package:json_annotation/json_annotation.dart';

part 'learningmodulemodel.g.dart';

@JsonSerializable()
class LearningModuleModel{
  final String id;
  final String name;
  final String description;
  final String imageName;
  final int index;
  final bool unlocked;

  LearningModuleModel(
      {required this.name, required this.description, this.imageName = "", required this.id,required this.index,required this.unlocked});

  factory LearningModuleModel.fromJson(Map<String,dynamic> data) => _$LearningModuleModelFromJson(data);

  Map<String,dynamic> toJson() => _$LearningModuleModelToJson(this);
}