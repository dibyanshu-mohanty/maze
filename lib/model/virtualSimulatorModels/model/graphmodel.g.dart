// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphModel _$GraphModelFromJson(Map<String, dynamic> json) => GraphModel(
      date: json['date'] as String? ?? "",
      open: (json['open'] as num?)?.toDouble() ?? 0.0,
      close: (json['close'] as num?)?.toDouble() ?? 0.0,
      high: (json['high'] as num?)?.toDouble() ?? 0.0,
      low: (json['low'] as num?)?.toDouble() ?? 0.0,
      volume: json['volume'] as int? ?? 0,
    );

Map<String, dynamic> _$GraphModelToJson(GraphModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'open': instance.open,
      'close': instance.close,
      'high': instance.high,
      'low': instance.low,
      'volume': instance.volume,
    };
