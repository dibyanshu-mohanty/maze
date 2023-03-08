


import 'package:json_annotation/json_annotation.dart';

part 'availabletickermodel.g.dart';

@JsonSerializable()
class AvailableTickersModel {
  final String ticker, name, image;
  final double price;

  AvailableTickersModel(
      {
      this.price = 0.0,
      this.image = "",
      this.name = "",
      this.ticker = ""});

  factory AvailableTickersModel.fromJson(Map<String, dynamic> data) =>
      _$AvailableTickersModelFromJson(data);

  Map<String, dynamic> toJson() => _$AvailableTickersModelToJson(this);
}
