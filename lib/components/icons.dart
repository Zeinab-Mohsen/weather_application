import 'package:flutter/material.dart';

Icon icons({
  required IconData icon,
  required double iconSize,
  Color color = Colors.white,
}) => Icon(
  icon,
  color: color,
  size: iconSize,
);