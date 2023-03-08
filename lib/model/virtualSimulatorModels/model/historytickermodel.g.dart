// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historytickermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryTickerModel _$HistoryTickerModelFromJson(Map<String, dynamic> json) =>
    HistoryTickerModel(
      transaction_value: (json['transaction_value'] as num?)?.toDouble() ?? 0.0,
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0.0,
      image: json['image'] as String? ?? "",
      name: json['name'] as String? ?? "",
      ticker: json['ticker'] as String? ?? "",
    );

Map<String, dynamic> _$HistoryTickerModelToJson(HistoryTickerModel instance) =>
    <String, dynamic>{
      'ticker': instance.ticker,
      'name': instance.name,
      'image': instance.image,
      'transaction_value': instance.transaction_value,
      'quantity': instance.quantity,
    };
