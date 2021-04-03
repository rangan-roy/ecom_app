import 'package:ecom_app/widgets/filter/title_and_textfields/filter_title.dart';
import 'package:flutter/material.dart';

class TitleWithColumn extends StatelessWidget {
  final String _title;
  final List<dynamic> _columnChildren;

  TitleWithColumn(this._title, this._columnChildren);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilterTitle(_title),
        Divider(),
        Column(children: _columnChildren),
      ],
    );
  }
}