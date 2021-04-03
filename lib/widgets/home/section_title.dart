import 'package:ecom_app/widgets/home/section_title/button.dart';
import 'package:ecom_app/widgets/home/section_title/title.dart' as MyTitle;
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String _title;
  final Function _viewAll;

  SectionTitle(this._title, this._viewAll);

  @override
  Widget build(BuildContext context) {
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
          MyTitle.Title(_title),
          Button(_viewAll),
        ],
      ),
    );
  }
}