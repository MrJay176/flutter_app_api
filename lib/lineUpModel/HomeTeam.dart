
import 'package:flutterappapi/lineUpModel/Squad.dart';
import 'package:flutterappapi/lineUpModel/playerModel.dart';

class HomeTeam {

  String formation;
  List<Squad> player;

  HomeTeam({this.formation, this.player});

  factory HomeTeam.fromjson(Map<String , dynamic> json ){
    return HomeTeam(

        formation:json['formation'],
        player:List<Squad>.from(json["squad"].map((x) => Squad.fromJson(x))),

    );
  }

}