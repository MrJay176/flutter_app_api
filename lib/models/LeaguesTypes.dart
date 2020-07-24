import 'Datum.dart';

class DataLeagues{

  DataLeagues({
    this.data,
  });

  List<Datum> data;

  factory DataLeagues.fromJson(Map<String, dynamic> json) => DataLeagues(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };

}

