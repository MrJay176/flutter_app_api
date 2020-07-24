import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutterappapi/lineUpModel/data_matchP.dart';
import 'package:flutterappapi/models/data.dart';
import 'package:flutterappapi/models/data.dart';
import 'package:flutterappapi/models/data.dart';
import 'package:flutterappapi/models/data.dart';

import 'ApiResponse.dart';
import 'package:http/http.dart' as http;

class FootballService {

  static const API = 'https://api.soccersapi.com/v2.2/';

  static const headers = {
    // 'apiKey':'',
    'Content-Type': 'application/json'
  };


  //Since Http Request are asyncronous you have to use a future

  //User
  //Token
  //today
  Future<List<data>> getListTodayMatches(String user, String Token, String t) async {
    //then execute once our http returns an actual response
    List<data> list;
    var data_;
    https: //api.soccersapi.com/v2.2/livescores/?user={YOUR_USER_NAME}&token={YOUR_TOKEN}&t=today

    return http.get(
        API + 'livescores/?user=' + user + "&token=" + Token + "&t=" + t,
        headers: headers).then((value) {
      if (value.statusCode == 200) {
        final jsondata = json.decode(value.body);

        data_ = jsondata["data"] as List;

        if (data_ != null) {
          print(data_);

          list = data_.map<data>((json) {
            return data.fromjson(json);
          }).toList();
        }
        print('Lenght issss ${list.length}');
      }
      return list;
    });
  }

  //Since Http Request are asyncronous you have to use a future
  Future<List<data>> getListTomorrowMatches(String user, String Token,
      String t) async {
    //then execute once our http returns an actual response
    List<data> list;
    var data_;
    https: //api.soccersapi.com/v2.2/livescores/?user={YOUR_USER_NAME}&token={YOUR_TOKEN}&t=today

    return await http.get(
        API + 'livescores/?user=' + user + "&token=" + Token + "&t=" + t,
        headers: headers).then((value) {
      if (value.statusCode == 200) {
        final jsondata = json.decode(value.body);

        data_ = jsondata["data"] as List;

        if (data_ != null) {
          print(data_);

          list = data_.map<data>((json) {
            return data.fromjson(json);
          }).toList();
        }
        print('Lenght issss ${list.length}');
      }
      return list;
    });
  }

  //Since Http Request are asyncronous you have to use a future
  Future<List<data>> getListYesterdayMatches(String user, String Token,
      String t) async {
    //then execute once our http returns an actual response
    List<data> list;
    var data_;
    https: //api.soccersapi.com/v2.2/livescores/?user={YOUR_USER_NAME}&token={YOUR_TOKEN}&t=today

    return await http.get(
        API + 'livescores/?user=' + user + "&token=" + Token + "&t=" + t,
        headers: headers).then((value) {
      if (value.statusCode == 200) {
        final jsondata = json.decode(value.body);

        data_ = jsondata["data"] as List;

        print('Lenght isssssssssssssssssssssssssssss ${data_.toString()}');

        if (data_ != null) {
          print(data_);

          list = data_.map<data>((json) {
            return data.fromjson(json);
          }).toList();
        }
        print('Lenght issssssssssssssssssssssssss ${list.length}');
      }
      return list;
    });
  }


  //Since Http Request are asyncronous you have to use a future
  Future<List<data>> getListInplayMatches(String user, String Token, String t) {
    //then execute once our http returns an actual response

    //then execute once our http returns an actual response
    List<data> list;
    var data_;
    https: //api.soccersapi.com/v2.2/livescores/?user={YOUR_USER_NAME}&token={YOUR_TOKEN}&t=today

    return http.get(API + 'livescores/?user=' + user + "&token=" + Token + "&t=" + t,
        headers: headers).then((value) {
      if (value.statusCode == 200) {
        final jsondata = json.decode(value.body);
        data_ = jsondata["data"] as List;
        if (data_ != null) {
          print(data_);
          list = data_.map<data>((json) {
            return data.fromjson(json);
          }).toList();
        }
        print('Lenght issss ${list.length}');
      }
      return list;
    });
  }

  //Since Http Request are asyncronous you have to use a future


  //user
  //token
  //t=match_lineups
  //match_id
  Future<data_matchP> getMatchInfoAndLineUp(String user, String Token,String match_line,String match_id) async {
    data_matchP list;
    var data_I;
    //fixtures/?user={YOUR_USER_NAME}&token={YOUR_TOKEN}&t=match_lineups&id={MATCH_ID}
    return await http.get(API +'fixtures/?user=' + user +'&token=' +Token + '&t=' +match_line +'&id=' + match_id,headers: headers)
        .then((value){
        if(value.statusCode == 200){

          final Map<String,dynamic > parsed = json.decode(value.body);
          print(parsed);
          final jsondata = json.decode(value.body);

          
          print('Lenght issssnnnnnnnnnnn ${json.encode(jsondata)}');

          data_I = parsed['data'];

          print('Lenght issssppppppppppppppppppppp ${json.encode(data_I)}');

          list = data_matchP.fromJson(data_I);



//          list = data_I.map<data_matchP>((json) {
//            return data_matchP.fromJson(json);
//          });
        }
        return list;
    });
  }

}