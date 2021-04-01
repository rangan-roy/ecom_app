import 'package:ecom_app/widgets/home_page_widgets/hot_deals_widget_widgets/product_item_widget.dart';
import 'package:flutter/material.dart';

class HotDealsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
        ProductItemWidget(),
      ],
    );
  }
}