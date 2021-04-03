import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Reviewed by Rangan Roy',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),
    );
  }
}