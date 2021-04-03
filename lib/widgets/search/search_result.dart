import 'package:ecom_app/models/filter_info_model.dart';
import 'package:ecom_app/pages/filter.dart';
import 'package:ecom_app/pages/sort.dart';
import 'package:ecom_app/widgets/category/buttons.dart';
import 'package:ecom_app/widgets/home/hot_deals/product_item.dart';
import 'package:ecom_app/widgets/search/search_result/number_of_products.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  final String _query;

  SearchResult(this._query);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20),
      children: [
        // number of total products found
        NumberOfProducts(),
        Divider(),

        // sort and filter button their onPressed functions
        Buttons(_sortButtonFunction, _filterButtonFunction),
        Divider(),

        // products
        ProductItem(),
        ProductItem(),
        ProductItem(),
        ProductItem(),
        ProductItem(),
      ],
    );
  }

  void _sortButtonFunction() async {
    int value = await showDialog(
      context: context,
      builder: (BuildContext context) => Sort(_sortOptionIndex),
    );
    
    if(value != null) setState(() => _sortOptionIndex = value);
  }

  void _filterButtonFunction() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => Filter(
        _brandFilterInfoModels, _colorFilterInfoModels, _priceRange, 
        _warrantyRange),
    );
    setState((){});
  }
}