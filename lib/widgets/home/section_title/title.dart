import 'package:ecom_app/widgets/home/section_title/title/first_letter.dart';
import 'package:ecom_app/widgets/home/section_title/title/other_letters.dart';
import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  final String _title;

  Title(this._title);

  @override
  Widget build(BuildContext context) {
    String firstLetter = _title[0];
    String otherLetters = _title.substring(1, _title.length);

    return Row(
      children: [
        FirstLetter(firstLetter),
        OtherLetters(otherLetters),
      ],
    );
  }
}