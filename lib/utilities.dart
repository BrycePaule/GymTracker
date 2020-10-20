import 'package:flutter/material.dart';

Color darkenColor(Color color) {
  return color.withRed(-20).withGreen(-20).withBlue(-20);
}

Color lightenColor(Color color) {
  return color.withOpacity(0.0);
}