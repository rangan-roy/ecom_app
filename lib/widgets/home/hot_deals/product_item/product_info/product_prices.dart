import 'package:flutter/material.dart';

class ProductPrices extends StatelessWidget {
  final int _presentPrice;
  final int _pastPrice;
  final double _fontSize;
  
  ProductPrices(this._presentPrice, this._pastPrice, this._fontSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'BDT ${_presentPrice.toString()}',
          style: TextStyle(fontSize: _fontSize),
        ),
        
        SizedBox(width: 10),
        
        Text(
          'BDT ${_pastPrice.toString()}',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Colors.grey,
            fontSize: _fontSize,
          ),
        ),
      ],
    );
  }
}