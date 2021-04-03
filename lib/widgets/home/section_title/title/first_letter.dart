import 'package:flutter/material.dart';

class FirstLetter extends StatelessWidget {
  final String _firstLetter;

  FirstLetter(this._firstLetter); 
  
  @override
  Widget build(BuildContext context) {
    return Text(
      _firstLetter,
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.headline6.
        fontSize + 7,
        fontWeight: FontWeight.w300,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}