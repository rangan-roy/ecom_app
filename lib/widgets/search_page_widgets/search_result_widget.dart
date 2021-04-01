import 'package:ecom_app/models/filter_info_model.dart';
import 'package:ecom_app/pages/filter_page.dart';
import 'package:ecom_app/pages/sort_page.dart';
import 'package:ecom_app/widgets/category_page_widgets/filter_button_widget.dart';
import 'package:ecom_app/widgets/category_page_widgets/sort_button_widget.dart';
import 'package:ecom_app/widgets/home_page_widgets/hot_deals_widget_widgets/product_item_widget.dart';
import 'package:flutter/material.dart';

class SearchResultWidget extends StatefulWidget {
  final String _query;

  SearchResultWidget(this._query);

  @override
  _SearchResultWidgetState createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
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
        Text(
          '100 Products Found',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        Divider(),

        // sort and filter button their onPressed functions
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // sort button
            SortButtonWidget(() async {
              int value = await showDialog(
                context: context,
                builder: (BuildContext context) => SortPage(_sortOptionIndex),
              );
              
              if(value != null) setState(() => _sortOptionIndex = value);
            }),
            // filter button
            FilterButtonWidget(() async {
              await showDialog(
                context: context,
                builder: (BuildContext context) => FilterPage(
                  _brandFilterInfoModels, _colorFilterInfoModels, _priceRange, 
                  _warrantyRange),
              );
              setState((){});
            }),
          ],
        ),
        Divider(),

        // products
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
      ],
    );
  }
}