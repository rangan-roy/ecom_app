import 'package:ecom_app/utils/button_styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function _viewAll;

  Button(this._viewAll);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('View All'),
      style: textButtonStyle,
      onPressed: _viewAll,
    );
  }
}