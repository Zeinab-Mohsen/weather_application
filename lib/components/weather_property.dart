import 'package:flutter/material.dart';
import 'package:weather_app/components/text_info.dart';

class WeatherProperty extends StatelessWidget {
  final String nameText;
  final String propertyText;

  const WeatherProperty({Key? key, required this.nameText, required this.propertyText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        TextInfo(text: nameText, fontsize: 20, color: Colors.white54,),
        TextInfo(text: propertyText, fontsize: 35,),
        SizedBox(height: 30.0,),
      ],
    );
  }
}