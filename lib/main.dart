import 'package:flutter/material.dart';

import './exercise.dart';
// import './result.dart';

void main() => runApp(GymTracker());

class GymTracker extends StatefulWidget {
  @override
  _GymTrackerState createState() => _GymTrackerState();
}

class _GymTrackerState extends State<GymTracker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Gym Tracker')),
          ),
          body: Column(
            children: [
              Exercise('Bench Press', 3, 10, 45),
              Exercise('Incline Bench Press', 3, 10),
              Exercise('Cable Fly', 3, 10),
            ],
          )),
    );
  }
}
