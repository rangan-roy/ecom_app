import 'package:ecom_app/pages/home_page.dart';
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
        primarySwatch: Colors.cyan,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontWeight: FontWeight.w400,
            wordSpacing: 1,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
