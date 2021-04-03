import 'package:flutter/material.dart';

class NumberOfProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '100 Products Found',
      style: Theme.of(context).textTheme.headline6,
      textAlign: TextAlign.center,
    );
  }
}