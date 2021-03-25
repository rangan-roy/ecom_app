import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/drawer_widget.dart';
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
    );
  }
}
