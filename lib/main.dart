import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappapi/push/InPlayList.dart';
import 'package:flutterappapi/push/ListOfLeagues.dart';
import 'package:flutterappapi/push/ListOfYesterday.dart';
import 'package:flutterappapi/services/FootballService.dart';
import 'package:flutterappapi/today_matches.dart';
import 'package:http/http.dart';
import 'package:get_it/get_it.dart';
import  'items/slide_dot.dart';

import 'items/slide_item.dart';
import 'models/Slide.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

void setupLocator(){

  //This initializes the instance only after it has been used for the first time
  GetIt.instance.registerLazySingleton(()=>FootballService());
  //Consuming the instance
  GetIt.instance<FootballService>();

}

class MyApp extends StatefulWidget {

  //WhereEver i am initializing the list from service i should do this.
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false,
      routes:{
        '/second':(context)=>Today(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Home()
    );
  }
}

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomeClass();
  }
}

class HomeClass extends State<Home>{

  int _currentPage =0;
  final PageController _pageController = PageController(
      initialPage:0
  );
  FootballService get service => GetIt.I<FootballService>();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2 ),(timer){
      if(_currentPage<3){
        _currentPage++;
      }else{
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(microseconds: 300), curve:Curves.easeIn);
    });
  }

  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        child:Scaffold(
          body:SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Container(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                          height: 420.0,
                          child :PageView.builder(
                              itemCount: slideList.length,
                              itemBuilder: (context,i)=>SlideItem(i),
                              controller:_pageController,
                              onPageChanged: _onPageChanged,
                              scrollDirection:Axis.horizontal
                          )
                      ),
                      Positioned(
                          bottom:0,
                          child:Stack(
                            alignment:AlignmentDirectional.topStart,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(bottom:35),
                                child: Row(
                                  children: <Widget>[
                                    for(int i = 0 ; i<slideList.length;i++)
                                      if(i==_currentPage)
                                        SlideDot(true)
                                      else
                                        SlideDot(false)
                                  ],
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[
                    Flexible(
                        child:GestureDetector(
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
                        )
                    ),

                    SizedBox(width:10.0),

                    Flexible(
                        child:GestureDetector(
                          onTap:(){
                            Navigator.of(context).push(new MaterialPageRoute(builder:(context){
                              return Today();
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
                                        image:AssetImage('assets/images/footballthree.jpg'),
                                      ),
                                    )
                                ),
                                Container(
                                  height:230.0,
                                  alignment:Alignment.bottomCenter,
                                  child:Text(
                                    'Today Matches',
                                    style:TextStyle(
                                        fontWeight:FontWeight.normal,
                                        color: Colors.blue,
                                        fontSize:15.0
                                    ),
                                  )
                                )
                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Flexible(
                      child:GestureDetector(
                        onTap:(){
                          Navigator.of(context).push(new MaterialPageRoute(builder:(context){
                            return Yesterday();
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
                                      image:AssetImage('assets/images/footballtwo.jpg'),
                                    ),
                                  )
                              ),
                              Container(
                                height:230.0,
                                alignment:Alignment.bottomCenter,
                                  child:Text(
                                    'Yesterday Matches',
                                    style:TextStyle(
                                        fontWeight:FontWeight.normal,
                                        color: Colors.green,
                                        fontSize:15.0
                                    ),
                                  )
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:10.0),
                    new Flexible(
                        child:GestureDetector(
                          onTap:(){
                            Navigator.of(context).push(new MaterialPageRoute(builder:(context){
                              return Play();
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
                                        image:AssetImage('assets/images/footballone.jpg'),
                                      ),
                                    )
                                ),
                                Container(
                                    height:230.0,
                                    alignment:Alignment.bottomCenter,
                                    child:Text(
                                      'Tomorrow Matches',
                                      style:TextStyle(
                                          fontWeight:FontWeight.normal,
                                          color: Colors.red,
                                          fontSize:15.0
                                      ),
                                    )
                                )
                              ],
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        //body:Today()
      );
  }
}


Widget getListView(){

  var listItems = getListElement();
  var listView  = ListView.builder(
      itemBuilder:(context,index){
        return ListTile(
          title:Text(listItems[index]),
          onTap:(){
            debugPrint('${listItems[index]} was tapped');
          }
        );
      }
  );
  return listView;
}

List<String> getListElement(){
  var items = List<String>.generate((1000), (index) => "item $index");
  return items;
}

