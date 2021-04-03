import 'package:ecom_app/widgets/home/categories/first_column.dart';
import 'package:ecom_app/widgets/home/categories/second_column.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Row build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FirstColumn(),
        SecondColumn(),
      ],
    );
  }
}