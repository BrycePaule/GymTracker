import 'package:flutter/material.dart';

import './account.dart';

class AccountWindow extends StatefulWidget {
  @override
  _AccountWindowState createState() => _AccountWindowState();
}

class _AccountWindowState extends State<AccountWindow> {
  List<Account> accounts = [
    Account('Bryce', mainColor: Colors.red),
    Account('Remy'),
    Account('Tanaya'),
    Account('Josh'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 5.0,
      controller: ScrollController(debugLabel: 'AccountWindowScroll'),
      children: [
        ...(accounts),
        RaisedButton(onPressed: accounts[0].toggleSelection)
      ],
    );
  }
}
