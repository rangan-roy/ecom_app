import 'package:flutter/material.dart';

class ProductDetailsInfoWidget extends StatefulWidget {
  @override
  _ProductDetailsInfoWidgetState createState() => 
    _ProductDetailsInfoWidgetState();
}

class _ProductDetailsInfoWidgetState extends State<ProductDetailsInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ADATA OTG Micro Reader',
            style: Theme.of(context).textTheme.headline6,
          ),

          SizedBox(height: 10),
          
          Row(
            children: [
              Text(
                'BDT 415',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              
              SizedBox(width: 10),
              
              Text(
                'BDT 550',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              SizedBox(width: 10),

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text('-20%'),
              ),
            ],
          ),

          SizedBox(height: 10),

          Row(
            children: [
              Text(
                'Rating: ',
                style: TextStyle(fontSize: 15),  
              ),
              Text(
                '4.5',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                ),
              ),
              Text(
                ' | 100 Reviews',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}