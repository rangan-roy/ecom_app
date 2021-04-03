import 'package:flutter/material.dart';

class ProductInfoTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'ADATA OTG Micro Reader',
      style: TextStyle(
        fontSize: 20,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}