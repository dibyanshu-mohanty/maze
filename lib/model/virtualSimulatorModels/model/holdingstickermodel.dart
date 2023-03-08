


import 'package:json_annotation/json_annotation.dart';
import 'package:maze/model/virtualSimulatorModels/model/graphmodel.dart';
// ignore_for_file: non_constant_identifier_names
part 'holdingstickermodel.g.dart';

@JsonSerializable()
class HoldingsTickerModel {
  final String ticker, name, image;
  final double price, quantity, profit, stock_value;

  HoldingsTickerModel(
      {
        this.price = 0.0,
        this.quantity = 0.0,
        this.profit = 0.0,
        this.stock_value = 0.0,
        this.image = "",
        this.name = "",
        this.ticker = "",
      });

  factory HoldingsTickerModel.fromJson(Map<String, dynamic> data) =>
      _$HoldingsTickerModelFromJson(data);

  Map<String, dynamic> toJson() => _$HoldingsTickerModelToJson(this);
}
