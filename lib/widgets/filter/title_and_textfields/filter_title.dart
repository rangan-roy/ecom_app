import 'package:ecom_app/pages/filter.dart';
import 'package:flutter/material.dart';

class FilterTitle extends StatelessWidget {
  final String _title;

  FilterTitle(this._title);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}