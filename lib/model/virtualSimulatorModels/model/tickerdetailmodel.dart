


import 'package:json_annotation/json_annotation.dart';
import 'package:maze/model/virtualSimulatorModels/model/graphmodel.dart';
// ignore_for_file: non_constant_identifier_names
part 'tickerdetailmodel.g.dart';

@JsonSerializable()
class TickerDetailModel {
  final String ticker, name, image;
  final double price;
  final List<GraphModel> graphData;

  TickerDetailModel(
      {
        this.price = 0.0,
        this.image = "",
        this.name = "",
        this.ticker = "",
        required this.graphData
      });

  factory TickerDetailModel.fromJson(Map<String, dynamic> data) =>
      _$TickerDetailModelFromJson(data);

  Map<String, dynamic> toJson() => _$TickerDetailModelToJson(this);
}
