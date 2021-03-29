import 'package:ecom_app/utils/sort_options_util.dart';
import 'package:flutter/material.dart';

class SortRadiosWidget extends StatelessWidget {
  final int _sortOptionIndex;

  SortRadiosWidget(this._sortOptionIndex);

  final int _sortOptionsCount = sortOptions.length;
  final List<Row> _sortRadios = [];

  void _setSortButtons(BuildContext context) {
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
  }

  @override
  Widget build(BuildContext context) {
    _setSortButtons(context);

    return Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              'Sort Options',
              style: Theme.of(context).textTheme.headline6,
            ),
            Divider(),
            Column(children: _sortRadios),
          ],
        ),
      ),
    );
  }
}