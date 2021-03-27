import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ProductImagePage extends StatelessWidget {
  static final String routeName = 'product_image';

  @override
  Widget build(BuildContext context) {
    final String _productImage = ModalRoute.of(context).settings.arguments;

    return PhotoView(
      backgroundDecoration: BoxDecoration(
        color: Colors.white,
      ),
      imageProvider: AssetImage(_productImage),
    );
  }
}