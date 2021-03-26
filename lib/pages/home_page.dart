import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          // category names and images
          GridView.count(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
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
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
