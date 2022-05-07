import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

class App_Bar extends StatelessWidget implements PreferredSizeWidget{
  final AppBar appBar;

  App_Bar({Key? key, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading:
      Icon(
        Icons.add,
        color: Colors.white,
      ),
      title:
      Text(
        DateFormat('EE').format(now) + ', ' + DateFormat.MMMMd().format(now),
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      actions:
      [
        Icon(
          WeatherIcons.celsius,
          color: Colors.white,
        ),
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}