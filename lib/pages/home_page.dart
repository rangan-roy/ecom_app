import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/category_item_widget.dart';
import 'package:ecom_app/widgets/drawer_widget.dart';
import 'package:ecom_app/widgets/product_widget.dart';
import 'package:ecom_app/widgets/section_title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('E-commerce'),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          buildCategories(context),

          // most bought products
          SectionTitleWidget('Most Bought', () {}),
          buildMostBoughtProductItems(),
        ],
      ),
    );
  }

  GridView buildCategories(BuildContext context) {
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
      crossAxisCount: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
      ],
    );
  }


  GridView buildMostBoughtProductItems() {
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
    );
  }
}
