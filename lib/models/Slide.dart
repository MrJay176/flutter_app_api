import 'package:flutter/cupertino.dart';

class Slide{
  final String imageUrl;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.description
  });

}

final slideList = [
  new Slide(
      imageUrl:'assets/images/footballfour.jpg',
      description:'Get Soccer Info'
  ),
  new Slide(
      imageUrl: 'assets/images/footballone.jpg',
      description:'Check Our Latest Scores'
  ),
  new Slide(
      imageUrl: 'assets/images/footballthree.jpg',
      description:'Stay in touch with events'
  ),
  new Slide(
      imageUrl: 'assets/images/footballtwo.jpg',
      description:'We never let you miss out'
  ),
];