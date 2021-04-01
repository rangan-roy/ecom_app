import 'package:ecom_app/widgets/filter_page_widgets/title_with_column_widget.dart';
import 'package:flutter/material.dart';

class SortRadiosWidget extends StatelessWidget {
  final int _sortOptionIndex;

  SortRadiosWidget(this._sortOptionIndex);

  final List<Row> _sortRadios = [];

  @override
  Widget build(BuildContext context) {
    // inititalize _sortRadios variable
    initSortRadios(context);

    return Card(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: TitleWithColumnWidget('Sort Options', _sortRadios),
      ),
    );
  }

  void initSortRadios(BuildContext context) {
    final List<String> sortOptions = [
      'Product New to Old',
      'Product Old to New',
      'Name A to Z',
      'Name Z to A',
      'Price Low to High',
      'Price High to Low',
      'Discount Low to High',
      'Discount high to Low',
      'Rating Low to High',
      'Rating High to Low',
      'Bought Low to High',
      'Bought High to Low',
    ];
    final int sortOptionsCount = sortOptions.length;

    for(var i = 0; i < sortOptionsCount; i++) {
      _sortRadios.add(
        Row(
          children: [
            Radio(
              groupValue: _sortOptionIndex,
              value: i,
              onChanged: (int value) => Navigator.of(context).pop(value),
            ),
            SizedBox(width: 10),
            Text(sortOptions[i]),
          ],
        )
      );
    }
  }
}