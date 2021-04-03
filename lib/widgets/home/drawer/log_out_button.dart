import 'package:ecom_app/utils/button_styles.dart';
import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 100,
      ),
      child: TextButton(
        child: Text('Log Out'),
        style: textButtonStyle,
        onPressed: () {},
      ),
    );
  }
}