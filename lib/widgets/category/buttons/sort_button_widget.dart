import 'package:flutter/material.dart';

class SortButtonWidget extends StatelessWidget {
  final Function _onPressedFunction;

  SortButtonWidget(this._onPressedFunction);
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: Row(
        children: [
          Icon(Icons.sort),
          SizedBox(width: 5),
          Text(
            'Sort',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      onPressed: _onPressedFunction,
    );
  }
}