import 'package:ecom_app/widgets/filter/title_and_textfields/text_fields/filter_text_field.dart';
import 'package:ecom_app/widgets/filter/title_and_textfields/filter_title.dart';
import 'package:ecom_app/widgets/filter/title_and_textfields/text_fields.dart';
import 'package:flutter/material.dart';

class TitleAndTextFields extends StatelessWidget {
  final String _title;
  final TextEditingController _minController;
  final TextEditingController _maxController;
  final List<int> _range;

  TitleAndTextFields(this._title, this._minController, 
    this._maxController, this._range);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilterTitle(_title),
        Divider(),
        SizedBox(height: 5),
        TextFields(_minController, _maxController, _range),
      ],
    );
  }
}