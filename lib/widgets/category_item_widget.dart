import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String _categoryName;
  final String _categoryImage;

  CategoryItemWidget(this._categoryName, this._categoryImage);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              _categoryImage,
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
                _categoryName.toUpperCase(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
