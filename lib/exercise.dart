import 'package:flutter/material.dart';

import './set.dart';

class Exercise extends StatefulWidget {
  final String name;
  List<Set> sets;

  Exercise(this.name, this.sets);

  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 50,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.white, width: 1)),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Image(
                    image: AssetImage('./assets/images/dumbell.png'),
                    width: 40,
                    height: 25,
                    alignment: Alignment.center,
                  ),
                  Text(
                    widget.name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...(widget.sets
                        .map((set) => Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    set.repetitions.toString(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'x',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    set.weight.toString(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ))
                        .toList())
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
