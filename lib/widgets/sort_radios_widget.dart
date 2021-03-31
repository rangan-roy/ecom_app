import 'package:flutter/material.dart';

class SortRadiosWidget extends StatelessWidget {
  final int _sortOptionIndex;

  SortRadiosWidget(this._sortOptionIndex);

  @override
  Widget build(BuildContext context) {
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
    final int _sortOptionsCount = sortOptions.length;
    final List<Row> _sortRadios = [];

    for(var i = 0; i < _sortOptionsCount; i++) {
      _sortRadios.add(
        Row(
          children: [
            Radio(
              groupValue: _sortOptionIndex,
              value: i,
              onChanged: (int value) => Navigator.pop(context, value),
            ),
            SizedBox(width: 10),
            Text(sortOptions[i]),
          ],
        )
      );
    }

    return Card(
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text(
            'Sort Options',
            style: Theme.of(context).textTheme.headline6,
          ),
          Divider(),
          Column(children: _sortRadios),
        ],
      ),
    );
  }
}