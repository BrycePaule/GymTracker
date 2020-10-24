import 'package:GymTracker/workout.dart';
import 'package:flutter/material.dart';

import './utilities.dart';

class Account extends StatefulWidget {
  String name;
  Color mainColor;
  Color accentColor;
  Icon icon = Icon(Icons.person);
  Function selectionCallback(String value);

  bool selected = false;
  Map<DateTime, Workout> workoutHistory;

  Account(this.name,
      {this.selectionCallback:, this.mainColor: Colors.blue}) {
    this.accentColor = darkenColor(mainColor);
  }

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  void updateName(String newName) => this.widget.name = newName;

  void updateIcon(Icon newIcon) => this.widget.icon = newIcon;

  void select() {
    if (!this.widget.selected) {
      this.widget.selectionCallback(this.widget.name.toString());
      this.widget.selected = true;
      setState(() {});
    }
  }

  void deselect() => this.widget.selected = false;

  void toggleSelection() {
    this.widget.selected = !this.widget.selected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FlatButton(
        onPressed: () {
          widget.selectionCallback("this.widget.name");
        },
        padding: EdgeInsets.all(0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Container(
            decoration: BoxDecoration(
                color: (this.widget.selected == true)
                    ? this.widget.mainColor
                    : lightenColor(this.widget.mainColor)
                // color: this.widget.mainColor,
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                      radius: 25,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: (this.widget.selected == true)
                        ? this.widget.accentColor
                        : lightenColor(this.widget.accentColor),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            this.widget.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
