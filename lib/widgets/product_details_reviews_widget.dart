import 'package:flutter/material.dart';

class ProductDetailsReviewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // product reviews title
              Text(
                'Product Reviews',
                style: Theme.of(context).textTheme.headline6,
              ),
              
              // add review button
              IconButton(
                icon: Icon(
                  Icons.add_circle,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),

          SizedBox(height: 5),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product review rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '4.5',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
                SizedBox(height: 10),

                // product review
                Text('This product is too good.'),
                SizedBox(height: 10),

                // product reviewer
                Text(
                  'Reviewed by Rangan Roy',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),

                // review date
                Text(
                  'Posted on 2020-12-06',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product review rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '4.5',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
                SizedBox(height: 10),

                // product review
                Text('This product is too good.'),
                SizedBox(height: 10),

                // product reviewer
                Text(
                  'Reviewed by Rangan Roy',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),

                // review date
                Text(
                  'Posted on 2020-12-06',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}