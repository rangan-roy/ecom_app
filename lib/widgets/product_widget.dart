import 'package:flutter/material.dart';

class ProductItemWidget extends StatefulWidget {
  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product image and discount
          Stack(
            children: [
              Image.asset(
                'images/user_profile_cover.jpg',
                width: double.maxFinite,
                height: 100,
                fit: BoxFit.cover,
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    '20%',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 3,
                  ),
                ),
              ),
            ],
          ),

          // product present and past price
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Text(
                  'BDT 1,690',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(width: 10),
                Text(
                  'BDT 2,690',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // product name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'Naviforce Men\'s Watch Watch Watch',
              style: Theme.of(context).textTheme.subtitle1,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // category name
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Text(
              'Category: Watch',
              style: TextStyle(
                color: Colors.grey,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
