import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/home/categories.dart';
import 'package:ecom_app/widgets/home/drawer.dart';
import 'package:ecom_app/widgets/home/most_bought.dart';
import 'package:ecom_app/widgets/home/hot_deals.dart';
import 'package:ecom_app/widgets/home/new_products.dart';
import 'package:ecom_app/widgets/home/section_title.dart';
import 'package:ecom_app/widgets/home/top_rated.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static final String routeName = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Shop Name', context, false),
      drawer: MyDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          // all categories
          Categories(),
          SizedBox(height: 30),
          
          // most bought products
          SectionTitle('Most Bought', () {}),
          MostBought(),

          // top rated products
          SectionTitle('Top Rated', () {}),
          TopRated(),

          // new products
          SectionTitle('New Products', () {}),
          NewProducts(),

          // hot deals
          SectionTitle('Hot Deals', () {}),
          HotDeals(),
        ],
      ),
    );
  }
}
