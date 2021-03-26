import 'package:ecom_app/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      // allows to use GridView() inside ListView()
      shrinkWrap: true,
      // makes GridView() scrollable (like a normal ListView() child) when
      // we hold the GridView() and try to scroll
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
      ],
    );;
  }
}