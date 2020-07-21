import 'package:flutter/material.dart';


class SlideDot extends StatelessWidget{

  bool isActive;
  SlideDot(this.isActive);

  //SlideItem(this.index);


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:Duration(milliseconds:150),
      margin:const EdgeInsets.symmetric(horizontal:10),
      height: isActive ? 12 : 8,
      width:isActive ? 12 : 8,
      decoration:BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(12)),
          color: isActive ? Colors.green[800]:Colors.grey
      ),
    );
  }

}