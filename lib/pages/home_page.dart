import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/category_list_widget.dart';
import 'package:ecom_app/widgets/drawer_widget.dart';
import 'package:ecom_app/widgets/most_bought_products_widget.dart';
import 'package:ecom_app/widgets/hot_deals_widget.dart';
import 'package:ecom_app/widgets/new_products_widget.dart';
import 'package:ecom_app/widgets/section_title_widget.dart';
import 'package:ecom_app/widgets/top_rated_products_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Shop Name', context, false),
      drawer: DrawerWidget(),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          // all categories
          CategoryListWidget(),
          SizedBox(height: 30),
          
          // most bought products
          SectionTitleWidget('Most Bought', () {}),
          MostBoughtProductsWidget(),

          // top rated products
          SectionTitleWidget('Top Rated', () {}),
          TopRatedProductsWidget(),

          // new products
          SectionTitleWidget('New Products', () {}),
          NewProductsWidget(),

          // hot deals
          SectionTitleWidget('Hot Deals', () {}),
          HotDealsWidget(),
        ],
      ),
    );
  }
}
