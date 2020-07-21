import 'package:flutter/material.dart';
import 'package:flutterappapi/services/FootballService.dart';
import 'package:get_it/get_it.dart';


class Yesterday extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return TableScoresStatus();

  }


}

class TableScoresStatus extends State<Yesterday>{

  //WhereEver i am initializing the list from service i should do this.
  FootballService get service => GetIt.I<FootballService>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

    );
  }

}