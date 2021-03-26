import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
  final String _title;
  final Function _viewAll;

  SectionTitleWidget(this._title, this._viewAll);

  @override
  Widget build(BuildContext context) {
    String firstLetter = _title[0];
    String otherLetters = _title.substring(1, _title.length);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      color: Colors.grey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                firstLetter.toUpperCase(),
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.
                  fontSize + 8,
                  fontWeight: Theme.of(context).textTheme.headline6.
                  fontWeight,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Container(
                child: Text(
                  otherLetters.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
          TextButton(
            child: Text('View All'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey.
              shade200),
              elevation: MaterialStateProperty.all(1),
            ),
            onPressed: _viewAll,
          ),
        ],
      ),
    );
  }
}