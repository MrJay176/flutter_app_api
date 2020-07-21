
import 'package:flutterappapi/models/awayFile.dart';
import 'package:flutterappapi/models/homeFile.dart';

class teamsObject{

  awayFile away;
  awayFile home;


  teamsObject({this.away, this.home});

  factory teamsObject.fromJson(Map<String , dynamic> json){
    return teamsObject(
      home: awayFile.fromJson(json["home"]),
      away: awayFile.fromJson(json["away"]),
    );
  }

}