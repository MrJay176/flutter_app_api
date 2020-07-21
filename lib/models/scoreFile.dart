
class scoreFile{

  dynamic homeScore;
  dynamic awayScore;
  dynamic htScore;
  dynamic ftScore;
  dynamic etScore;
  dynamic psScore;


  scoreFile({this.homeScore, this.awayScore, this.htScore, this.ftScore,
      this.etScore, this.psScore});

  factory scoreFile.fromJson(Map<String ,  dynamic> json){
    return scoreFile(
      homeScore: json["home_score"],
      awayScore: json["away_score"],
      htScore: json["ht_score"],
      ftScore: json["ft_score"],
      etScore: json["et_score"],
      psScore: json["ps_score"],

    );
  }

}

