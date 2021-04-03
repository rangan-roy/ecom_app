import 'package:flutter/material.dart';

class FilterButtonWidget extends StatelessWidget {
  final Function _onPressedFunction;

  FilterButtonWidget(this._onPressedFunction);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: Row(
        children: [
          Text(
            'Filter',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 5),
          Icon(Icons.filter),
        ],
      ),
      onPressed: _onPressedFunction,
    );
  }
}