// ignore_for_file: non_constant_identifier_names

class NewTournament {
  final String id,
      name,
      registration_start_date,
      registration_end_date,
      start_date,
      end_date,
      status,
      image;
  final double first_prize, second_prize, third_prize;

  NewTournament(
      {this.id = "",
      this.name = "",
      this.registration_start_date = "",
      this.registration_end_date = "",
      this.start_date = "",
      this.end_date = "",
      this.status = "",
      this.image = "",
      this.first_prize = 0.0,
      this.second_prize = 0.0,
      this.third_prize = 0.0});
}
