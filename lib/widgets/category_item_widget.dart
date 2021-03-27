import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String _categoryName;
  final String _categoryImage;
  final int _categoryTotalItems;

  CategoryItemWidget(this._categoryName, this._categoryImage, 
    this._categoryTotalItems);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // category image
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  _categoryImage,
                  width: double.maxFinite,
                  height: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
            ),

            // category name
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                _categoryName,
                style: TextStyle(fontSize: 18),
              ),
            ),

            // category's total items
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                '$_categoryTotalItems Items',
                style: TextStyle(color: Colors.grey.shade400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
