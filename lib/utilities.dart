import 'package:flutter/material.dart';

Color darkenColor(Color color) {
  int r = color.red;
  int g = color.green;
  int b = color.blue;
  return color.withRed(r - 20).withGreen(g - 20).withBlue(b - 20);
}

Color lightenColor(Color color) {
  return color.withAlpha(100);
}
