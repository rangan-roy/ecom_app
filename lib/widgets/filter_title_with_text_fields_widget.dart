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
            getTextField(_minController, 0),

            // deifference between two fields
            SizedBox(width: 10),

            // max textfiled
            Text('Max = '),
            getTextField(_maxController, 1),
          ],
        ),
      ],
    );
  }

  SizedBox getTextField(TextEditingController controller, int rangeIndex) {
    return SizedBox(
      width: 120,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        onChanged: (String value) {
          try {
            _range[rangeIndex] = double.parse(value).round();
          } catch(error) {
            print(error);
          }
        },
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}