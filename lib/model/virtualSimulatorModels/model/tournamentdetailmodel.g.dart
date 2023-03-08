// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournamentdetailmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentDetailModel _$TournamentDetailModelFromJson(
        Map<String, dynamic> json) =>
    TournamentDetailModel(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      registration_start_date: json['registration_start_date'] as String? ?? "",
      registration_end_date: json['registration_end_date'] as String? ?? "",
      start_date: json['start_date'] as String? ?? "",
      end_date: json['end_date'] as String? ?? "",
      status: json['status'] as String? ?? "",
      image: json['image'] as String? ?? "",
      first_prize: (json['first_prize'] as num?)?.toDouble() ?? 0.0,
      second_prize: (json['second_prize'] as num?)?.toDouble() ?? 0.0,
      third_prize: (json['third_prize'] as num?)?.toDouble() ?? 0.0,
      tournament_money: (json['tournament_money'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$TournamentDetailModelToJson(
        TournamentDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'registration_start_date': instance.registration_start_date,
      'registration_end_date': instance.registration_end_date,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'status': instance.status,
      'image': instance.image,
      'first_prize': instance.first_prize,
      'second_prize': instance.second_prize,
      'third_prize': instance.third_prize,
      'tournament_money': instance.tournament_money,
    };
