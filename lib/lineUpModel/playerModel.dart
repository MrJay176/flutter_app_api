
class playerModel{

  String id;
  String common_name;
  String img;

  playerModel({this.id, this.common_name, this.img});


  factory playerModel.fromJson(Map<String ,dynamic> json){

    return playerModel(
        id: json['id'],
        common_name:json['common_name'],
        img:json['img']
    );
  }

}