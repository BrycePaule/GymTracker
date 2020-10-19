import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final String name;
  int sets;
  int repetitions;

  Exercise(this.name, this.sets, this.repetitions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.red, border: Border.all(color: Colors.white, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Image(
                  image: AssetImage('./lib/images/dumbell.png'),
                  width: 40,
                  height: 25,
                  alignment: Alignment.center,
                ),
                Text(
                  name,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  sets.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  repetitions.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
