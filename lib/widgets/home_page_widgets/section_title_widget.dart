import 'package:ecom_app/utils/button_styles_util.dart';
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey.shade100),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                firstLetter,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.
                  fontSize + 7,
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Container(
                child: Text(
                  otherLetters,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
          TextButton(
            child: Text(
              'View All',
              style: TextStyle(color: Colors.black),
            ),
            style: textButtonStyle,
            onPressed: _viewAll,
          ),
        ],
      ),
    );
  }
}