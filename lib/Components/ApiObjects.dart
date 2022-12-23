import '../Utility/GlobalData.dart';
import '../Utility/HttpClientHelper.dart';
import '../Utility/UrlConfi.dart';

class ApiObject {
  static get matchCode => GlobalData.matchCode;

  static void setScoreCardValues(var state) async {
    var api = UrlConfig.APIURL;
    var obj = await HttpClientHelper.Get("$api/$matchCode");

    state(
      () {
        GlobalData.baseLineDisplay = obj["lead_trail"].toString();
        GlobalData.innings = obj["innings"].toString();
        GlobalData.curr_score = obj["curr_score"].toString();
        GlobalData.overs = obj["overs"].toString();
        GlobalData.run_bat = obj["run_bat"].toString();
        GlobalData.ball_bat = obj["ball_bat"].toString();
        GlobalData.run_bowl = obj["run_bowl"].toString();
        GlobalData.ball_bowl = obj["ball_bowl"].toString();
        GlobalData.wick_bowl = obj["wick_bowl"].toString();
        GlobalData.batsman = obj["batsman"].toString();
        GlobalData.bowler = obj["bowler"].toString();
        GlobalData.prev_ball = obj["prev_ball"].toString();
        GlobalData.out_zone_id = obj["out_zone_id"].toString();
        GlobalData.consecutive_flag = obj["consecutive_flag"].toString();
        GlobalData.curr_team_playing_and_inn =
            obj["curr_team_playing_and_inn"].toString();
        GlobalData.i1 = obj["i1"].toString();
        GlobalData.i2 = obj["i2"].toString();
        GlobalData.i3 = obj["i3"].toString();
        GlobalData.t1_prob = obj["t1_prob"].toString();
        GlobalData.team1_prob = double.parse(GlobalData.t1_prob);
        GlobalData.t2_prob = obj["t2_prob"].toString();
        GlobalData.team2_prob = double.parse(GlobalData.t2_prob);
      },
    );
  }
}
