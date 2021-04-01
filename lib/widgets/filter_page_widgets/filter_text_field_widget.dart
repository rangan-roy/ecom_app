import 'package:flutter/material.dart';

class FilterTextField extends StatelessWidget {
  final TextEditingController _controller;
  final List<int> _range;
  final int _rangeIndex;

  FilterTextField(this._controller, this._range, this._rangeIndex);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: _controller,
        onChanged: (String value) {
          if(value.isEmpty) value = '0';

          try {
            _range[_rangeIndex] = double.parse(value).round();
          } catch(error) {
            print(error);
          }
        },
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}