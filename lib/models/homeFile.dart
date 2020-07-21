
class homeFile{

  String id;
  String name;
  String short_code;
  String img;
  String form;
  String coach_id;

  homeFile({this.id, this.name, this.short_code, this.img, this.form,
      this.coach_id});


  factory homeFile.fronJson(Map<String , dynamic> json){
    return homeFile(
      id: json["id"],
      short_code:json["short_code"],
      coach_id: json["coach_id"],
      name: json["name"],
      img: json["img"],
      form: json["form"],
    );
  }

}