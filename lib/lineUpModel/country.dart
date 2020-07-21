
class country{

  String id;
  String name;

  country({this.id, this.name});


  factory country.fromjson(Map<String , dynamic> json ){

    return country(
      id: json["id"] == null ? null : json["id"],
      name: json["name"] == null ? null : json["name"],
    );
  }

}
