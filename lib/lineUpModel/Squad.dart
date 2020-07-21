
import 'package:flutterappapi/lineUpModel/playerModel.dart';

class Squad{

  playerModel player;
  String position;

  Squad({this.player, this.position});

  factory Squad.fromJson(Map<String , dynamic> json){
    return Squad(

    player:playerModel.fromJson(json["player"]) ,
    position: json["position"]
    );
  }

}