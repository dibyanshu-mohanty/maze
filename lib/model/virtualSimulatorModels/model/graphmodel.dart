

import 'package:json_annotation/json_annotation.dart';

part 'graphmodel.g.dart';

@JsonSerializable()
class GraphModel{
  final String date;
  final double open, close, high, low;
  final int volume;

  GraphModel({
    this.date = "",
    this.open = 0.0,
    this.close = 0.0,
    this.high = 0.0,
    this.low = 0.0,
    this.volume = 0,
  });

  factory GraphModel.fromJson(Map<String, dynamic> data) =>
      _$GraphModelFromJson(data);

  Map<String, dynamic> toJson() => _$GraphModelToJson(this);
}