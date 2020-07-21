
//T means Generic type parameter , The type of the body that was returned by the Api
class ApiResponse<T>{

  //The Data The Api will return of type t
  T data;
  bool error;
  String error_message;

  //In Most Cases You won't have any error so it will return false
  ApiResponse({this.data, this.error = false});

}


//{
//"data": {
//"home": {
//"formation": "3-4-3",
//"confirmed_formation": 1,
//"squad": [
//{
//"player": {
//"id": "13183",
//"name": null,
//"common_name": "Burki, Roman",
//"firstname": "Roman",
//"lastname": "Burki",
//"weight": "85",
//"height": "187",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13183.png",
//"country": {
//"id": "114",
//"name": "Switzerland",
//"cc": "ch"
//}
//},
//"number": "1",
//"captain": null,
//"position": "G",
//"order": 1
//},
//{
//"player": {
//"id": "13184",
//"name": null,
//"common_name": "Piszczek, Lukasz",
//"firstname": "Lukasz",
//"lastname": "Piszczek",
//"weight": "79",
//"height": "184",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13184.png",
//"country": {
//"id": "95",
//"name": "Poland",
//"cc": "pl"
//}
//},
//"number": "26",
//"captain": null,
//"position": "D",
//"order": 2
//},
//{
//"player": {
//"id": "13185",
//"name": null,
//"common_name": "Hummels, Mats",
//"firstname": "Mats Julian",
//"lastname": "Hummels",
//"weight": "94",
//"height": "191",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13185.png",
//"country": {
//"id": "4",
//"name": "Germany",
//"cc": "de"
//}
//},
//"number": "15",
//"captain": null,
//"position": "D",
//"order": 3
//},
//{
//"player": {
//"id": "13199",
//"name": null,
//"common_name": "Akanji, Manuel",
//"firstname": "Manuel Obafemi",
//"lastname": "Akanji",
//"weight": "91",
//"height": "187",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13199.png",
//"country": {
//"id": "114",
//"name": "Switzerland",
//"cc": "ch"
//}
//},
//"number": "16",
//"captain": null,
//"position": "D",
//"order": 4
//},
//{
//"player": {
//"id": "13187",
//"name": null,
//"common_name": "Hakimi, Achraf",
//"firstname": "Achraf",
//"lastname": "Hakimi",
//"weight": "73",
//"height": "181",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13187.png",
//"country": {
//"id": "79",
//"name": "Morocco",
//"cc": "ma"
//}
//},
//"number": "5",
//"captain": null,
//"position": "D",
//"order": 5
//},
//{
//"player": {
//"id": "13198",
//"name": null,
//"common_name": "Dahoud, Mahmoud",
//"firstname": "Mahmoud",
//"lastname": "Dahoud",
//"weight": "68",
//"height": "178",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13198.png",
//"country": {
//"id": "4",
//"name": "Germany",
//"cc": "de"
//}
//},
//"number": "8",
//"captain": null,
//"position": "M",
//"order": 6
//},
//{
//"player": {
//"id": "22763",
//"name": null,
//"common_name": "Delaney, Thomas",
//"firstname": "Thomas",
//"lastname": "Delaney",
//"weight": null,
//"height": null,
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/22763.png",
//"country": {
//"id": null,
//"name": null,
//"cc": null
//}
//},
//"number": "6",
//"captain": null,
//"position": "M",
//"order": 7
//},
//{
//"player": {
//"id": "13190",
//"name": null,
//"common_name": "Guerreiro, Raphael",
//"firstname": "Raphael Adelino",
//"lastname": "Jose Guerreiro",
//"weight": "71",
//"height": "170",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13190.png",
//"country": {
//"id": "96",
//"name": "Portugal",
//"cc": "pt"
//}
//},
//"number": "13",
//"captain": null,
//"position": "D",
//"order": 8
//},
//{
//"player": {
//"id": "13192",
//"name": null,
//"common_name": "Brandt, Julian",
//"firstname": "Julian",
//"lastname": "Brandt",
//"weight": "83",
//"height": "185",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13192.png",
//"country": {
//"id": "4",
//"name": "Germany",
//"cc": "de"
//}
//},
//"number": "19",
//"captain": null,
//"position": "M",
//"order": 9
//},
//{
//"player": {
//"id": "13201",
//"name": null,
//"common_name": "Haaland, Erling",
//"firstname": "Erling Braut",
//"lastname": "Haaland",
//"weight": "87",
//"height": "194",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13201.png",
//"country": {
//"id": "87",
//"name": "Norway",
//"cc": "no"
//}
//},
//"number": "17",
//"captain": null,
//"position": "F",
//"order": 10
//},
//{
//"player": {
//"id": "13191",
//"name": null,
//"common_name": "Hazard, Thorgan",
//"firstname": "Thorgan Ganael Francis",
//"lastname": "Hazard",
//"weight": "71",
//"height": "175",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/13191.png",
//"country": {
//"id": "21",
//"name": "Belgium",
//"cc": "be"
//}
//},
//"number": "23",
//"captain": null,
//"position": "M",
//"order": 11
//}
//]
//},
//"away": {
//"formation": "3-4-3",
//"confirmed_formation": 1,
//"squad": [
//{
//"player": {
//"id": "12113",
//"name": null,
//"common_name": "Schubert, Markus",
//"firstname": "Markus",
//"lastname": "Schubert",
//"weight": "81",
//"height": "184",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/12113.png",
//"country": {
//"id": "4",
//"name": "Germany",
//"cc": "de"
//}
//},
//"number": "23",
//"captain": null,
//"position": "G",
//"order": 1
//},
//{
//"player": {
//"id": "12115",
//"name": null,
//"common_name": "Todibo, Jean-Clair",
//"firstname": "Jean-Clair",
//"lastname": "Todibo",
//"weight": "81",
//"height": "190",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/12115.png",
//"country": {
//"id": "7",
//"name": "France",
//"cc": "fr"
//}
//},
//"number": "21",
//"captain": null,
//"position": "D",
//"order": 2
//},
//{
//"player": {
//"id": "19999",
//"name": null,
//"common_name": "Sane, Salif",
//"firstname": "Salif",
//"lastname": "Sane",
//"weight": "84",
//"height": "196",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/19999.png",
//"country": {
//"id": "105",
//"name": "Senegal",
//"cc": "sn"
//}
//},
//"number": "26",
//"captain": null,
//"position": "D",
//"order": 3
//},
//{
//"player": {
//"id": "8273",
//"name": null,
//"common_name": "Nastasic, Matija",
//"firstname": "Matija",
//"lastname": "Nastasic",
//"weight": "83",
//"height": "188",
//"img": "https://cdn.soccersapi.com/images/soccer/players/50/8273.png",
//"country": {
//"id": "106",
//"name": "Serbia",
//"cc": "rs"
//}
//},
//"number": "5",
//"captain": null,
//"position": "D",
//"order": 4
//},
//}
//}
//}
