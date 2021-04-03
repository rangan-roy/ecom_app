import 'package:ecom_app/widgets/filter/title_and_textfields/text_fields/filter_text_field.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final TextEditingController _minController;
  final TextEditingController _maxController;
  final List<int> _range;

  TextFields(this._minController, this._maxController, this._range);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // min textfiled
        Text('Min = '),
        FilterTextField(_minController, _range, 0),

        // deifference between two fields
        SizedBox(width: 10),

        // max textfiled
        Text('Max = '),
        FilterTextField(_maxController, _range, 1),
      ],
    );
  }
}