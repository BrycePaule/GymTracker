import 'dart:math';

import 'package:GymTracker/account_window.dart';
import 'package:GymTracker/workout.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './exercise.dart';
import './set.dart';

void main() {
  runApp(GymTracker());
}

class GymTracker extends StatefulWidget {
  @override
  _GymTrackerState createState() => _GymTrackerState();
}

class _GymTrackerState extends State<GymTracker> {

SharedPreferences sharedPreferences;

  @override
  void initState() {
    initSharedPreferences();
    super.initState();
  }

  initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    List<String> exercises = [
      'Bench Press',
      'Incline Bench Press',
      'Pushups',
      'Pull-ups',
      'Cable Fly',
      'Standing Bicep Curls',
      'Hammer Curls',
      'Deadlift',
      'Low Bar Squat',
      'High Bar Squat',
    ];

    List<Exercise> randomExercise() {
      Random rng = Random();
      List<Exercise> _rv = [];

      for (var i = 0; i < 4 + rng.nextInt(3); i++) {
        List<Set> _sets = [];
        for (var i = 0; i < 2 + rng.nextInt(2); i++) {
          _sets.add(Set(rng.nextInt(10), 20.0 + (5 - rng.nextInt(10))));
        }
        _rv.add(Exercise(exercises[rng.nextInt(exercises.length)], _sets));
      }
      return _rv;
    }

    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  title: Center(child: Text('Gym Tracker')),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.person),
                      ),
                      Tab(
                        icon: Icon(Icons.directions_run),
                      ),
                      Tab(
                        icon: Icon(Icons.directions_bike),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    AccountWindow(),
                    Workout(randomExercise()),
                    Icon(Icons.directions_bike),
                  ],
                ))));
  }
}
