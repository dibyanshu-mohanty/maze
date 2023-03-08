// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickerdetailmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TickerDetailModel _$TickerDetailModelFromJson(Map<String, dynamic> json) =>
    TickerDetailModel(
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      image: json['image'] as String? ?? "",
      name: json['name'] as String? ?? "",
      ticker: json['ticker'] as String? ?? "",
      graphData: (json['graphData'] as List<dynamic>)
          .map((e) => GraphModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TickerDetailModelToJson(TickerDetailModel instance) =>
    <String, dynamic>{
      'ticker': instance.ticker,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'graphData': instance.graphData,
    };
