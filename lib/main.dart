import 'package:ecom_app/pages/category.dart';
import 'package:ecom_app/pages/home.dart';
import 'package:ecom_app/pages/product_details.dart';
import 'package:ecom_app/pages/product_image.dart';
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
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (_) => Home(),
        ProductDetails.routeName: (_) => ProductDetails(),
        ProductImage.routeName: (_) => ProductImage(),
        Category.routeName: (_) => Category(),
      },
    );
  }
}
