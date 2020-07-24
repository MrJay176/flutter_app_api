import 'dart:convert';
import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          'SocccerApp',
              style: TextStyle(
                color:Colors.white
              ),
        ),
      ),
      body:LeaguesWidget(),
    );
  }
}


class LeaguesWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return LeaguesWidgetClass();
  }
}

class LeaguesWidgetClass extends State<LeaguesWidget> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  FootballService get service => GetIt.I<FootballService>();
  List<dynamic> today_list = new List();
  bool loading = true;

  @override
  void initState() {
    super.initState();

    _fetch();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  _fetch()async{
    service.getListTodayMatches('matrendhub', 'c897fa89741bdd0dbc346b26e08a75de', 'today').then(
            (value) => {
              today_list.add(new data_matchP()),
              for(data daa in value){
                today_list.add(daa),
              },
          setState(() {
            loading = false;

          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
      child:loading?CircularProgress():
      ListView.builder(
          itemCount:today_list!=null?today_list.length:0,
          itemBuilder:(context , index){
            String s = _checkRuntype(today_list[index]);
            String scoreAway;
            String scoreHome;

            String imgUrlHome;
            String imgUrlAway;

            if(s=='y'){
              scoreAway =today_list[index].scores.awayScore.toString();
              scoreHome = today_list[index].scores.awayScore.toString();
              imgUrlHome = today_list[index].teams.home.img.toString();
              imgUrlAway = today_list[index].teams.away.img.toString();
            }
            return s == 'y' ? Container(
              margin:EdgeInsets.fromLTRB(5.0,10.0,5.0,10.0) ,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                   children: <Widget>[
                     Text(
                       scoreHome=='null'? 'no info yet':scoreHome,
                     ),
                     new Text(
                         '${today_list[index].teams.home.name.toString()}',
                         style:TextStyle(
                             color:Colors.blue
                         )
                     ),
                     Image.network(imgUrlHome,
                       fit:BoxFit.fill,
                       loadingBuilder:(BuildContext context, Widget child , ImageChunkEvent loadingProgress){
                       if(loadingProgress == null)return child;
                       return CircularProgressIndicator(
                         value:loadingProgress.expectedTotalBytes !=null?
                         loadingProgress.cumulativeBytesLoaded/loadingProgress.expectedTotalBytes:null,
                       );
                       } ,
                     )
                   ],
                  ),
                  Text(
                    'VS',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                      color:Colors.red,
                    )
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                          scoreAway=='null'? 'no info yet' :scoreAway,
                      ),
                      new Text(
                          '${today_list[index].teams.away.name.toString()}',
                          style:TextStyle(
                            color:Colors.blue,
                          )),
                      Image.network(imgUrlAway,
                        fit:BoxFit.fill,
                        loadingBuilder:(BuildContext context, Widget child , ImageChunkEvent loadingProgress){
                          if(loadingProgress == null)return child;
                          return CircularProgressIndicator(
                            value:loadingProgress.expectedTotalBytes !=null?
                            loadingProgress.cumulativeBytesLoaded/loadingProgress.expectedTotalBytes:null,
                          );
                        } ,
                      )
                    ],
                  )
                ],
              ),
            ): Container(
              height:250.0,
              color:Colors.blue[200],
              child:Center(
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'Your Today Matches',
                        style:TextStyle(
                            color:Colors.white,
                            fontSize:20.0,
                            fontWeight:FontWeight.bold
                        )
                    ),
                  ),
                ),
              )
            );

          }
      ),
    );
  }


  Widget CircularProgress(){
    Animation<Color> valueColor;
    var indicator = Center(
      child:CircularProgressIndicator(
        value: 0.5,
        strokeWidth:4.0,
        valueColor:valueColor,
        backgroundColor:Colors.blue,
      )
    );
    return indicator;
  }


  String _checkRuntype(dynamic take){
    if (take.runtimeType == data){
      return 'y';
    }else{
      return 'n';
    }
  }

  _AnimationSlide(){

    Animation<Offset> custom = Tween<Offset>(begin:Offset(1.0,1.0),end:Offset(0.0,0.0)).animate(CurvedAnimation(
        parent:_controller,
        curve:Interval(
          0.125 , 0.250
        ),
    ));


  }


}


