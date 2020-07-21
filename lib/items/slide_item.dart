import 'package:flutter/material.dart';
import 'package:flutterappapi/models/Slide.dart';

class SlideItem extends StatefulWidget{
  final int index;

  SlideItem(this.index);

  @override
  _SlideItemState createState() => _SlideItemState();

}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start,
      children: <Widget>[
        new Container(
          height:320,
          decoration:BoxDecoration(
              shape:BoxShape.rectangle,
              color: Colors.black45,
              image:DecorationImage(
                image:AssetImage(slideList[widget.index].imageUrl),
                fit:BoxFit.cover,
              )
          ) ,
        ),
        SizedBox(height:10.0),
        Text(
            slideList[widget.index].description,
            style:TextStyle(
                color:Colors.green[900],
                fontSize:19.0,
                fontWeight:FontWeight.bold
            )
        )
      ],
    );
  }
}