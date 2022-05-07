import 'package:intl/intl.dart';
import 'package:weather/weather.dart';

WeatherFactory wf = WeatherFactory('330e2f0c84b107fd6d261171edae9cd5');

class Forecast
{

  Future<List> weatherInfo()
  async{
    List forecast = await wf.fiveDayForecastByCityName('Cairo');
    return forecast;
  }

  List list = [''];

  void convertFutureListToList()
  async {
    Future<List> futureOfList = weatherInfo();
    list = await futureOfList ;
  }

  String firstDayDate()
  {
    var date = list[0].date;
    String s = DateFormat('EEEE').format(date);
    return s;
  }

  String secondDayDate()
  {
    var date = list[9].date;
    String s = DateFormat('EEEE').format(date);
    return s;
  }

  String thirdDayDate()
  {
    var date = list[17].date;
    String s = DateFormat('EEEE').format(date);
    return s;
  }

  String forthDayDate()
  {
    var date = list[25].date;
    String s = DateFormat('EEEE').format(date);
    return s;
  }

  String fifthDayDate()
  {
    var date = list[33].date;
    String s = DateFormat('EEEE').format(date);
    return s;
  }

  /////////////////////////////////////////////////

  String firstDayMinTemp()
  {
    String temp = (list[0].tempMin).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String secondDayMinTemp()
  {
    String temp = (list[9].tempMin).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String thirdDayMinTemp()
  {
    String temp = (list[17].tempMin).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String forthDayMinTemp()
  {
    String temp = (list[25].tempMin).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String fifthDayMinTemp()
  {
    String temp = (list[33].tempMin).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  /////////////////////////////////////////////////

  String firstDayMaxTemp()
  {
    String temp = (list[0].tempMax).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String secondDayMaxTemp()
  {
    String temp = (list[9].tempMax).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String thirdDayMaxTemp()
  {
    String temp = (list[17].tempMax).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String forthDayMaxTemp()
  {
    String temp = (list[25].tempMax).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

  String fifthDayMaxTemp()
  {
    String temp = (list[33].tempMax).toString();
    return temp.substring(0, temp.indexOf(' '));
  }

    /////////////////////////////////////////////////

  String firstDayState()
  {
    String state = list[0].weatherDescription;
    return state;
  }

  String secondDayState()
  {
    String state = list[9].weatherDescription;
    return state;
  }

  String thirdDayState()
  {
    String state = list[17].weatherDescription;
    return state;
  }

  String forthDayState()
  {
    String state = list[25].weatherDescription;
    return state;
  }

  String fifthDayState()
  {
    String state = list[33].weatherDescription;
    return state;
  }
}