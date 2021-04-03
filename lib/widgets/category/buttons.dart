import 'package:ecom_app/widgets/category/buttons/filter_button_widget.dart';
import 'package:ecom_app/widgets/category/buttons/sort_button_widget.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function _sortButtonFunction;
  final Function _filterButtonFunction;

  Buttons(this._sortButtonFunction, this._filterButtonFunction);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // sort button
        SortButtonWidget(_sortButtonFunction),
        // filter button
        FilterButtonWidget(_filterButtonFunction),
      ],
    );
  }
}