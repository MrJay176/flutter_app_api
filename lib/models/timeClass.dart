
class timeClass{

  DateTime datetime;
  DateTime date;
  String time;
  dynamic minute;
  int timestamp;
  String timezone;


  timeClass({this.datetime, this.date, this.time, this.minute, this.timestamp,
      this.timezone});

  factory timeClass.fromJson(Map<String,dynamic> json){
    return timeClass(
      datetime: DateTime.parse(json["datetime"]),
      date: DateTime.parse(json["date"]),
      time: json["time"],
      minute: json["minute"],
      timestamp: json["timestamp"],
      timezone: json["timezone"],

    );

  }
}