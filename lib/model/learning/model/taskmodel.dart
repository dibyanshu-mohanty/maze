import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class TaskModel{
  final String taskType;
  final String taskName;
  // final bool unlocked;
  // final int index;


  TaskModel({required this.taskName,required this.taskType});
}