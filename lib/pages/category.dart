import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/models/filter_info_model.dart';
import 'package:ecom_app/pages/filter.dart';
import 'package:ecom_app/widgets/category/buttons.dart';
import 'package:ecom_app/widgets/home/hot_deals/product_item.dart';
import 'package:ecom_app/pages/sort.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  static final String routeName = 'category';

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
          Buttons(_sortButtonFunction, _filterButtonFunction),

          // product items
          ProductItem(),
          ProductItem(),
          ProductItem(),
          ProductItem(),
          ProductItem(),
          ProductItem(),
        ],
      ),
    );
  }

  void _sortButtonFunction() async {
    // showDialog() can return null if user doesn't select any radio button and 
    // hits the back button 
    int value = await showDialog(
      context: context,
      builder: (BuildContext context) => Sort(_sortOptionIndex),
    );

    if(value != null) setState(() => _sortOptionIndex = value);
  }

  void _filterButtonFunction() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => Filter(_brandFilterInfoModels, 
        _colorFilterInfoModels, _priceRange, _warrantyRange),
    );
    setState(() {});
  }
}