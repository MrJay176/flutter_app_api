
import 'package:flutterappapi/lineUpModel/playerModel.dart';

import 'Squad.dart';

class awayTeam{

  String formation;
  List<Squad> player;

  awayTeam({this.formation, this.player});

  factory awayTeam.fromjson(Map<String , dynamic> json ){

    return awayTeam(

      formation:json['formation'],
        player:List<Squad>.from(json["squad"].map((x) => Squad.fromJson(x))),

    );
  }

}