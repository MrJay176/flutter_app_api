
class LeagueFile{

  String id;
  String name;
  String type;
  String countryId;
  String countryName;
  String countryFlag;


  LeagueFile({this.id, this.name, this.type, this.countryId, this.countryName,
      this.countryFlag});

  factory LeagueFile.fromJson (Map<String , dynamic> json){
  return LeagueFile(
    id: json["id"],
    name: json["name"],
    type: json["type"],
    countryId: json["country_id"],
    countryName: json["country_name"],
    countryFlag: json["country_flag"],
  );
}


}


