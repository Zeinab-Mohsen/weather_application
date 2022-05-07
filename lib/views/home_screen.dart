import 'package:flutter/material.dart';
import 'package:weather_app/components/forecast.dart';
import 'package:weather_app/components/icons.dart';
import 'package:weather_app/components/text_info.dart';
import 'package:weather_app/components/weather.dart';
import 'package:weather_app/components/weather_property.dart';
import 'package:weather_icons/weather_icons.dart';
import '../components/app_bar.dart';
import '../components/background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  weather weatherNow = new weather();
  Forecast forecast  = new Forecast();

  @override
  Widget build(BuildContext context) {
    weatherNow.calc();
    forecast.convertFutureListToList();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: App_Bar(appBar: AppBar(),),
      body: Stack(
        children: [
          background(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        SizedBox(height: 120.0,),
                        TextInfo(text: 'Cairo', fontsize: 30,),
                        SizedBox(height: 35.0,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextInfo(text: weatherNow.tempreture(), fontsize: 100, fontWeight: FontWeight.bold,),
                            icons(icon: WeatherIcons.moon_alt_full, iconSize: 25,),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            Transform.rotate(
                                  angle: 89.5,
                                  child: icons(icon: Icons.arrow_back_ios_outlined, iconSize: 20, color: Colors.white38,),
                                ),
                            TextInfo(text: weatherNow.maxTempreture(), fontsize: 20,),
                            icons(icon: WeatherIcons.moon_alt_full, iconSize: 9, color: Colors.white),
                            SizedBox(width: 15.0,),
                            Transform.rotate(
                                  angle: -89.6,
                                  child: icons(icon: Icons.arrow_back_ios_outlined, iconSize: 20, color: Colors.white38,),
                                ),
                            TextInfo(text: weatherNow.minTempreture(), fontsize: 20,),
                            icons(icon: WeatherIcons.moon_alt_full, iconSize: 9, color: Colors.white),
                          ],
                        ),
                        SizedBox(height: 50.0,),
                        TextInfo(text: weatherNow.weatherState(), fontsize: 30,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextInfo(text: 'Feels like ' + weatherNow.realFeel(), fontsize: 20, color: Colors.white54,),
                            icons(icon: WeatherIcons.moon_alt_full, iconSize: 8,),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 0.0, color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            SizedBox(height: 35.0,),
                            TextInfo(text: forecast.firstDayDate(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.secondDayDate(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.thirdDayDate(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.forthDayDate(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.fifthDayDate(), fontsize: 15,),
                          ],
                        ),
                        SizedBox(width: 26.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            SizedBox(height: 35.0,),
                            TextInfo(text: forecast.firstDayState(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.secondDayState(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.thirdDayState(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.forthDayState(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.fifthDayState(), fontsize: 15,),
                          ],
                        ),
                        SizedBox(width: 26.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            SizedBox(height: 35.0,),
                            TextInfo(text: forecast.firstDayMaxTemp(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.secondDayMaxTemp(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.thirdDayMaxTemp(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.forthDayMaxTemp(), fontsize: 15,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.fifthDayMaxTemp(), fontsize: 15,),
                          ],
                        ),
                        SizedBox(width: 26.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                          [
                            SizedBox(height: 35.0,),
                            TextInfo(text: forecast.firstDayMinTemp(), fontsize: 15, color: Colors.grey,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.secondDayMinTemp(), fontsize: 15, color: Colors.grey,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.thirdDayMinTemp(), fontsize: 15, color: Colors.grey,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.forthDayMinTemp(), fontsize: 15, color: Colors.grey,),
                            SizedBox(height: 25.0,),
                            TextInfo(text: forecast.fifthDayMinTemp(), fontsize: 15, color: Colors.grey,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60.0,),
                  Container(
                    color: Colors.white10,
                    child: Row(
                      children:
                      [
                        Column(
                          children:
                          [
                            SizedBox(height: 40.0,),
                            WeatherProperty(nameText: 'Sunrise', propertyText: weatherNow.sunriseTime(),),
                            WeatherProperty(nameText: 'Cloudiness', propertyText: weatherNow.weatherCloudiness(),),
                            WeatherProperty(nameText: 'Wind', propertyText: weatherNow.weatherWindSpeed(),),
                          ],
                        ),
                        SizedBox(width: 50.0,),
                        Column(
                          children:
                          [
                            SizedBox(height: 40.0,),
                            WeatherProperty(nameText: 'Sunset', propertyText: weatherNow.sunsetTime(),),
                            WeatherProperty(nameText: 'Humidity', propertyText: weatherNow.weatherHumidity(),),
                            WeatherProperty(nameText: 'Pressure', propertyText: weatherNow.weatherPressure(),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}