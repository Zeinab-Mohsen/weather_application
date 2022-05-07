import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/flutter_weather_bg.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/components/weather.dart';

weather weatherNow = new weather();

class background extends StatelessWidget {
  background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    weatherNow.calc();
    var now = DateTime.now();
    String time = DateFormat('kk:mm').format(now);
    var timeNow = int.parse(time.substring(0, 2) + time.substring(3));
    var sunset = int.parse(weatherNow.sunsetTime().substring(0, 3) + weatherNow.sunsetTime().substring(4));
    var sunrise = int.parse(weatherNow.sunriseTime().substring(0, 3) + weatherNow.sunriseTime().substring(4));

    if(sunset <= timeNow || sunrise >= timeNow)
    {
      if(weatherNow.weatherState() == 'Clear')
        return WeatherBg(weatherType: WeatherType.sunnyNight, height: 800, width: 360,);
      else if(weatherNow.weatherState() == 'Clouds')
        return WeatherBg(weatherType: WeatherType.cloudyNight, height: 800, width: 360,);
      else
        return WeatherBg(weatherType: WeatherType.sunnyNight, height: 800, width: 360,);
    }
    else
    {
      if(weatherNow.weatherState() == 'Clear')
        return WeatherBg(weatherType: WeatherType.sunny, height: 800, width: 4000,);
      else if(weatherNow.weatherState() == 'Clouds')
        return WeatherBg(weatherType: WeatherType.cloudy, height: 800, width: 360,);
      else
        return WeatherBg(weatherType: WeatherType.sunny, height: 800, width: 360,);
    }
  }
}