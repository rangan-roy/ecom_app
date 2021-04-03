import 'package:flutter/material.dart';

class OtherLetters extends StatelessWidget {
  final String _otherLetters;

  OtherLetters(this._otherLetters);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _otherLetters,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}