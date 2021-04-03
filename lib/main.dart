import 'package:ecom_app/pages/cart.dart';
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
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: Cart.routeName,
      routes: {
        Home.routeName: (BuildContext context) => Home(),
        ProductDetails.routeName: (BuildContext context) => ProductDetails(),
        ProductImage.routeName: (BuildContext context) => ProductImage(),
        Category.routeName: (BuildContext context) => Category(),
        Cart.routeName: (BuildContext context) => Cart(),
      },
    );
  }
}
