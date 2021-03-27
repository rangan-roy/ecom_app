import 'package:flutter/material.dart';

class ProductItemWidget extends StatefulWidget {
  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade100,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          // product image and discount percentege
          Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  'images/user_profile_cover.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    '-20%',
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

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product present and past price
                  Row(
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

                  SizedBox(height: 10),

                  // product name
                  Text(
                    'Naviforce Men\'s Watch Watch Watch',
                    style: Theme.of(context).textTheme.subtitle1,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 10),
                  
                  // product rating
                  Text(
                    'Rating: 4.5',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
