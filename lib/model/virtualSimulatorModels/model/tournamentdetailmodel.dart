// ignore_for_file: non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

part 'tournamentdetailmodel.g.dart';

@JsonSerializable()
class TournamentDetailModel {
  final String
  id,
      name,
      registration_start_date,
      registration_end_date,
      start_date,
      end_date,
      status,
      image;
  final double first_prize, second_prize, third_prize, tournament_money;

  TournamentDetailModel(
      {
        this.id="",
        this.name = "",
        this.registration_start_date = "",
        this.registration_end_date = "",
        this.start_date = "",
        this.end_date = "",
        this.status = "",
        this.image = "",
        this.first_prize = 0.0,
        this.second_prize = 0.0,
        this.third_prize = 0.0,
        this.tournament_money = 0.0,
      });

  factory TournamentDetailModel.fromJson(Map<String, dynamic> data) =>
      _$TournamentDetailModelFromJson(data);

  Map<String, dynamic> toJson() => _$TournamentDetailModelToJson(this);
}
