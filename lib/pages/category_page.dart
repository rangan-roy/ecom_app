import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/models/filter_info_model.dart';
import 'package:ecom_app/widgets/category_page_widgets/filter_button_widget.dart';
import 'package:ecom_app/pages/filter_page.dart';
import 'package:ecom_app/widgets/home_page_widgets/hot_deals_widget_widgets/product_item_widget.dart';
import 'package:ecom_app/widgets/category_page_widgets/sort_button_widget.dart';
import 'package:ecom_app/pages/sort_page.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  static final String routeName = 'category';

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  // sorting required variables
  int _sortOptionIndex = 0;

  // filtering required variables
  List<FilterInfoModel> _brandFilterInfoModels = [
    FilterInfoModel('Easy', 120),
    FilterInfoModel('Lotto', 180),
  ];
  List<FilterInfoModel> _colorFilterInfoModels = [
    FilterInfoModel('Red', 100),
    FilterInfoModel('Green', 200),
  ];
  List<int> _priceRange = [0, 1000000000]; // range in taka
  List<int> _warrantyRange = [0, 100]; // range in month

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
              FilterButtonWidget(_filteButtonFunction),
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
    // showDialog() can return null if user doesn't select any radio button and 
    // hits the back button 
    int value = await showDialog(
      context: context,
      builder: (BuildContext context) => SortPage(_sortOptionIndex),
    );

    if(value != null) setState(() => _sortOptionIndex = value);
  }

  void _filteButtonFunction() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => FilterPage(_brandFilterInfoModels, 
        _colorFilterInfoModels, _priceRange, _warrantyRange),
    );
    setState(() {});
  }
}