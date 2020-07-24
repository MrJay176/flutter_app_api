import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappapi/models/data.dart';
import 'package:flutterappapi/services/FootballService.dart';
import 'package:get_it/get_it.dart';

class Leagues extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return LeaguesState();

  }
}

class LeaguesState extends State<Leagues>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(),
          body:GridClass()
      )
    );
  }
}


class GridClass extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GridState();
  }

}

class GridState extends State<GridClass>{

  @override
  Widget build(BuildContext context) {

    return GridView.builder(

        scrollDirection:Axis.vertical,

        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),

        itemBuilder:(context , index ){
          return GestureDetector(
            onTap:(){
              Navigator.of(context).push(new MaterialPageRoute(builder:(context){
                return Leagues();
              }));
            },
            child: new Card(
              child:Stack(
                children: <Widget>[
                  Container(
                      height:200.0,
                      width:200.0,
                      decoration:BoxDecoration(
                        shape:BoxShape.rectangle,
                        color:Colors.white,
                        image:DecorationImage(
                          image:AssetImage('assets/images/footballfour.jpg'),
                        ),
                      )
                  ),
                  Container(
                    height:230.0,
                    alignment:Alignment.bottomCenter,
                    child: Text(
                      'League Details',
                      style:TextStyle(
                          fontWeight:FontWeight.normal,
                          color: Colors.black,
                          fontSize:15.0
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }

    );
  }

}

