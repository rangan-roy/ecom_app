import 'package:ecom_app/pages/category_page.dart';
import 'package:ecom_app/pages/home_page.dart';
import 'package:ecom_app/pages/product_details_page.dart';
import 'package:ecom_app/pages/product_image_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        canvasColor: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      initialRoute: ProductDetailsPage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        ProductDetailsPage.routeName: (_) => ProductDetailsPage(),
        ProductImagePage.routeName: (_) => ProductImagePage(),
        CategoryPage.routeName: (_) => CategoryPage(),
      },
    );
  }
}
