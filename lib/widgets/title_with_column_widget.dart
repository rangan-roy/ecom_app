import 'package:flutter/material.dart';

class TitleWithColumnWidget extends StatelessWidget {
  final String _title;
  final List<dynamic> _columnChildren;

  TitleWithColumnWidget(this._title, this._columnChildren);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brands',
          style: Theme.of(context).textTheme.headline6,  
        ),
        Divider(),
        Column(children: _columnChildren),
      ],
    );
  }
}