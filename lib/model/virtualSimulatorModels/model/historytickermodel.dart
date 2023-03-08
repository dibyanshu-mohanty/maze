import 'package:json_annotation/json_annotation.dart';
import 'package:maze/model/virtualSimulatorModels/model/graphmodel.dart';
// ignore_for_file: non_constant_identifier_names
part 'historytickermodel.g.dart';

@JsonSerializable()
class HistoryTickerModel {
  final String ticker, name, image;
  final double transaction_value, quantity;

  HistoryTickerModel(
      {
        this.transaction_value = 0.0,
        this.quantity = 0.0,
        this.image = "",
        this.name = "",
        this.ticker = "",
      });

  factory HistoryTickerModel.fromJson(Map<String, dynamic> data) =>
      _$HistoryTickerModelFromJson(data);

  Map<String, dynamic> toJson() => _$HistoryTickerModelToJson(this);
}
