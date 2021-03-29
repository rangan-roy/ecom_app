import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/product_item_widget.dart';
import 'package:ecom_app/widgets/sort_button_widget.dart';
import 'package:ecom_app/widgets/sort_radios_widget.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  static final String routeName = 'category';

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int _sortOptionIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Category Name', context, true),
      body: ListView(
        children: [
          // sort amd filter button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // sort button
              SortButtonWidget(_sortButtonFunction),
              // filter button
              getFilterButton()
            ],
          ),

          // product items
          ProductItemWidget(),
          ProductItemWidget(),
          ProductItemWidget(),
          ProductItemWidget(),
          ProductItemWidget(),
          ProductItemWidget(),
        ],
      ),
    );
  }

  void _sortButtonFunction() async {
    _sortOptionIndex = await showDialog(
      context: context,
      builder: (_) => SortRadiosWidget(_sortOptionIndex),
    );
    setState(() {});
  }

  TextButton getFilterButton() {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: Row(
        children: [
          Text(
            'Filter',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 5),
          Icon(Icons.filter),
        ],
      ),
      onPressed: () {},
    );
  }
}