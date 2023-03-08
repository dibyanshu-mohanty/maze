// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfoliomodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PortfolioData _$PortfolioDataFromJson(Map<String, dynamic> json) =>
    PortfolioData(
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      profit: (json['profit'] as num?)?.toDouble() ?? 0.0,
      invested: (json['invested'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$PortfolioDataToJson(PortfolioData instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'profit': instance.profit,
      'invested': instance.invested,
    };
