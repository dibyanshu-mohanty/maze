// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availabletickermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableTickersModel _$AvailableTickersModelFromJson(
        Map<String, dynamic> json) =>
    AvailableTickersModel(
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      image: json['image'] as String? ?? "",
      name: json['name'] as String? ?? "",
      ticker: json['ticker'] as String? ?? "",
    );

Map<String, dynamic> _$AvailableTickersModelToJson(
        AvailableTickersModel instance) =>
    <String, dynamic>{
      'ticker': instance.ticker,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
    };
