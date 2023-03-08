// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holdingstickermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HoldingsTickerModel _$HoldingsTickerModelFromJson(Map<String, dynamic> json) =>
    HoldingsTickerModel(
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0.0,
      profit: (json['profit'] as num?)?.toDouble() ?? 0.0,
      stock_value: (json['stock_value'] as num?)?.toDouble() ?? 0.0,
      image: json['image'] as String? ?? "",
      name: json['name'] as String? ?? "",
      ticker: json['ticker'] as String? ?? "",
    );

Map<String, dynamic> _$HoldingsTickerModelToJson(
        HoldingsTickerModel instance) =>
    <String, dynamic>{
      'ticker': instance.ticker,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'quantity': instance.quantity,
      'profit': instance.profit,
      'stock_value': instance.stock_value,
    };
