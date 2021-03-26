import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/drawer_widget.dart';
import 'package:ecom_app/widgets/product_widget.dart';
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
          buildSectionTitle('Most Bought', () {}),
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
        Card(
          elevation: 10,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  'images/user_profile_cover.jpg',
                  fit: BoxFit.cover,
                  height: double.maxFinite,
                  width: double.maxFinite,
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  height: double.maxFinite,
                  width: double.maxFinite,
                  color: Colors.white30,
                  child: Text(
                    'T-shirt',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container buildSectionTitle(String title, Function viewAll) {
    String firstLetter = title[0];
    String otherLetters = title.substring(1, title.length);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      color: Colors.grey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                firstLetter.toUpperCase(),
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6.
                    fontSize + 8,
                  fontWeight: Theme.of(context).textTheme.headline6.
                    fontWeight,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Container(
                child: Text(
                  otherLetters.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
          TextButton(
            child: Text('View All'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey.
              shade200),
              elevation: MaterialStateProperty.all(1),
            ),
            onPressed: viewAll,
          ),
        ],
      ),
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
