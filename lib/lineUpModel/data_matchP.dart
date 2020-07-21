import 'package:flutterappapi/lineUpModel/HomeTeam.dart';
import 'package:flutterappapi/lineUpModel/awayTeam.dart';


class data_matchP{

  HomeTeam home;
  awayTeam away;

  data_matchP({this.home, this.away});


  factory data_matchP.fromJson(Map<String , dynamic> json){
    return data_matchP(
    home: HomeTeam.fromjson(json["home"]),
    away: awayTeam.fromjson(json["away"])
    );
  }

  toJson(){
    return{
      "home":home ,
      "away":away
    };
  }

}

