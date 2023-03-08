// ignore_for_file: non_constant_identifier_names


import 'package:json_annotation/json_annotation.dart';


part 'portfoliomodel.g.dart';

@JsonSerializable()
class PortfolioData {
  final double? balance, profit, invested;

  PortfolioData({
    this.balance = 0.0,
    this.profit = 0.0,
    this.invested = 0.0,
  });

  factory PortfolioData.fromJson(Map<String, dynamic> data) =>
      _$PortfolioDataFromJson(data);

  Map<String, dynamic> toJson() => _$PortfolioDataToJson(this);
}
