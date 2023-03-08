import 'package:json_annotation/json_annotation.dart';

part 'taskmodel.g.dart';

@JsonSerializable()
class TaskModel{
  final String taskType;
  final String taskName;
  // final bool unlocked;
  // final int index;


  TaskModel({required this.taskName,required this.taskType});

  factory TaskModel.fromJson(Map<String, dynamic> data) =>
      _$TaskModelFromJson(data);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}