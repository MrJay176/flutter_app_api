
class awayFile{

  String id;
  String name;
  String shortCode;
  String img;
  String form;
  String coachId;
  dynamic color;
  dynamic kitColors;


  awayFile({this.id, this.name, this.shortCode, this.img, this.form,
      this.coachId, this.color, this.kitColors});

  factory awayFile.fromJson(Map<String , dynamic> json){
    return awayFile(
      id: json["id"],
      name: json["name"],
      shortCode: json["short_code"],
      img: json["img"],
      form: json["form"],
      coachId: json["coach_id"],
      color: json["color"],
      kitColors: json["kit_colors"],
    );
  }

}