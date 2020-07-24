
class Datum{

  Datum({
    this.id,
    this.name,
    this.isCup,
    this.isAmateur,
    this.continentId,
    this.countryId,
    this.currentSeasonId,
    this.currentRoundId,
    this.currentStageId,
  });

  String id;
  String name;
  String isCup;
  String isAmateur;
  String continentId;
  String countryId;
  String currentSeasonId;
  String currentRoundId;
  dynamic currentStageId;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    isCup: json["is_cup"],
    isAmateur: json["is_amateur"],
    continentId: json["continent_id"],
    countryId: json["country_id"],
    currentSeasonId: json["current_season_id"],
    currentRoundId: json["current_round_id"],
    currentStageId: json["current_stage_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "is_cup": isCup,
    "is_amateur": isAmateur,
    "continent_id": continentId,
    "country_id": countryId,
    "current_season_id": currentSeasonId,
    "current_round_id": currentRoundId,
    "current_stage_id": currentStageId,
  };


}