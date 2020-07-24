import 'package:flutterappapi/models/homeFile.dart';
import 'package:flutterappapi/models/scoreFile.dart';
import 'package:flutterappapi/models/teamsObject.dart';
import 'package:flutterappapi/models/timeClass.dart';
import 'LeagueFile.dart';
import 'awayFile.dart';

class data{

  String id;
  dynamic status;
  dynamic statusName;
  dynamic statusPeriod;
  dynamic pitch;
  dynamic refereeId;
  String roundId;
  String seasonId;
  String seasonName;
  dynamic stageId;
  dynamic stageName;
  dynamic groupId;
  dynamic groupName;
  dynamic aggregateId;
  dynamic winnerTeamId;
  String venueId;
  dynamic leg;
  String deleted;
  timeClass time;
  teamsObject teams;
  LeagueFile league;
  scoreFile scores;
  bool weatherReport;


  data({this.id, this.status, this.statusName, this.statusPeriod, this.pitch,
      this.refereeId, this.roundId, this.seasonId, this.seasonName,
      this.stageId, this.stageName, this.groupId, this.groupName,
      this.aggregateId, this.winnerTeamId, this.venueId, this.leg, this.deleted,
      this.time, this.teams, this.league, this.scores,this.weatherReport});

  //factory constructor helps us to return an instance of this class , it helps to label a default constructor
  //Dynamic represent Dart Object of type var or any type

  factory data.fromjson(Map<String , dynamic> json){
    return data(
      id: json["id"],
      status: json["status"],
      statusName: json["status_name"],
      statusPeriod: json["status_period"],
      pitch: json["pitch"],
      refereeId: json["referee_id"],
      roundId: json["round_id"],
      seasonId: json["season_id"],
      seasonName: json["season_name"],
      stageId: json["stage_id"],
      stageName: json["stage_name"],
      groupId: json["group_id"],
      groupName: json["group_name"],
      aggregateId: json["aggregate_id"],
      winnerTeamId: json["winner_team_id"],
      venueId: json["venue_id"],
      leg: json["leg"],
      deleted: json["deleted"],
      time: timeClass.fromJson(json["time"]),
      teams: teamsObject.fromJson(json["teams"]),
      league: LeagueFile.fromJson(json["league"]),
      scores: scoreFile.fromJson(json["scores"]),
      weatherReport: json["weather_report"],
    );
  }

}