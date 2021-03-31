import 'package:ecom_app/widgets/filter_text_field_widget.dart';
import 'package:flutter/material.dart';

class FilterTitleWithTextFields extends StatelessWidget {
  final String _title;
  final TextEditingController _minController;
  final TextEditingController _maxController;
  final List<int> _range;

  FilterTitleWithTextFields(this._title, this._minController, 
    this._maxController, this._range);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _title,
          style: Theme.of(context).textTheme.headline6,
        ),
        Divider(),
        SizedBox(height: 5),
        Row(
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
        ),
      ],
    );
  }
}