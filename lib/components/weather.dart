import 'package:weather/weather.dart';

WeatherFactory wf = WeatherFactory('330e2f0c84b107fd6d261171edae9cd5');
class weather
{
  Future<String> weatherInfo(String s)
  async {
    String finalString;
    Weather w = await wf.currentWeatherByCityName('Cairo');

    if(s == 'temp')
    {
      finalString = w.temperature.toString();
      return finalString;
    }

    if(s == 'minTemp')
    {
      finalString = w.tempMin.toString();
      return finalString;
    }

    if(s == 'maxTemp')
    {
      finalString = w.tempMax.toString();
      return finalString;
    }

    if(s == 'tempFeel')
    {
      finalString = w.tempFeelsLike.toString();
      return finalString;
    }

    if(s == 'state')
    {
      finalString = w.weatherMain.toString();
      return finalString;
    }

    if(s == 'sunrise')
    {
      finalString = w.sunrise.toString();
      return finalString;
    }

    if(s == 'sunset')
    {
      finalString = w.sunset.toString();
      return finalString;
    }

    if(s == 'humidity')
    {
      finalString = w.humidity.toString();
      return finalString;
    }

    if(s == 'windSpeed')
    {
      finalString = w.windSpeed.toString();
      return finalString;
    }

    if(s == 'pressure')
    {
      finalString = w.pressure.toString();
      return finalString;
    }

    if(s == 'cloudiness')
    {
      finalString = w.cloudiness.toString();
      return finalString;
    }

    return '';
  }

  String temp = '', minTemp = '', maxTemp = '', tempFeel = '', state = '', sunrise = '', sunset = '', humidity = '', windSpeed = '', pressure = '', cloudiness = '';
  void calc()
  async
  {
    Future<String> f;

    f = weatherInfo('temp');
    temp = await f;

    f = weatherInfo('minTemp');
    minTemp = await f;

    f = weatherInfo('maxTemp');
    maxTemp = await f;

    f = weatherInfo('tempFeel');
    tempFeel = await f;

    f = weatherInfo('state');
    state = await f;

    f = weatherInfo('sunrise');
    sunrise = await f;

    f = weatherInfo('sunset');
    sunset = await f;

    f = weatherInfo('humidity');
    humidity = await f;

    f = weatherInfo('windSpeed');
    windSpeed = await f;

    f = weatherInfo('pressure');
    pressure = await f;

    f = weatherInfo('cloudiness');
    cloudiness = await f;
  }

  String tempreture() {return temp.substring(0, temp.indexOf(' '));}

  String minTempreture() {return minTemp.substring(0, temp.indexOf(' '));}

  String maxTempreture() {return maxTemp.substring(0, temp.indexOf(' '));}

  String realFeel() {return tempFeel.substring(0, temp.indexOf(' '));}

  String weatherState() {return state;}

  String sunriseTime() {return sunrise.substring(10, 16);}

  String sunsetTime() {return sunset.substring(10, 16);}

  String weatherHumidity() {return humidity + '%';}

  String weatherWindSpeed() {return windSpeed + 'km/h';}

  String weatherPressure() {return pressure + 'hPa';}

  String weatherCloudiness() {return cloudiness + '%';}
}