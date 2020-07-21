import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterappapi/lineUpModel/data_matchP.dart';
import 'package:flutterappapi/services/FootballService.dart';
import 'package:get_it/get_it.dart';
import 'models/data.dart';

class Today extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return TodayClass();
  }
}


class TodayClass extends State<Today>{

  FootballService get service => GetIt.I<FootballService>();
  List<data> datas;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  _fetchData() async{
    setState(() {
      isLoading = true;
    });
     service.getListYesterdayMatches('matrendhub', 'c897fa89741bdd0dbc346b26e08a75de', 'yesterday')
         //.getMatchInfoAndLineUp('matrendhub', 'c897fa89741bdd0dbc346b26e08a75de', 'match_lineups', '61332946')
    //getListTodayMatches('matrendhub','c897fa89741bdd0dbc346b26e08a75de','today')
        .then((value) {
      datas = value;
      print('Prinnntttttttttttttttttttttttttttttt'+value.toString());
      print('Prinnntttttttttttttttttttttttttttttt'+datas.toString());

      setState(() {
        isLoading = false;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      child:Center(
        child: Text(
          '${datas[0].teams.away.name.toString()}',
          style:TextStyle(
            fontWeight:FontWeight.bold,
            fontSize:15.0,
            color:Colors.black
          ),

        ),
      ) ,
    )
    );
  }

  String _changeToJson(var object){
    String converted;
    converted = jsonDecode(object).toString();
    return converted;
  }

}
