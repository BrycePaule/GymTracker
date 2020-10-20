import 'package:flutter/material.dart';

import './exercise.dart';

class Workout extends StatelessWidget {

  final List<Exercise> exercises;

  Workout(this.exercises);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: exercises,
    );
  }
}