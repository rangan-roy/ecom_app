import 'package:ecom_app/utils/button_styles.dart';
import 'package:ecom_app/widgets/home/hot_deals/product_item.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  static final String routeName = 'cart';

  final TextEditingController _controller = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 15),
        children: [
          // number of items
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '10 Items',
              style: TextStyle(fontSize: 18),  
            ),
          ),
          SizedBox(height: 15),

          // product item
          ProductItem(),

          // product quantity and subtotal
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // product quantity
                Row(
                  children: [
                    Text('Quantity'),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),

                // product subtotal
                Text('Subtotal: 1800 Taka'),
              ],
            ),
          ),

          // remove item button
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.delete),
                Text('Remove Item'),
              ],
            ),
            onPressed: () {},
          ),

          SizedBox(height: 20),
          
          // total and checkout button
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delivery Charge: 150 Taka'),
                    SizedBox(height: 5),
                    Text(
                      'Total: 1000 Taka',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,  
                      ),  
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                  child: TextButton(
                    child: Text('Checkout'),
                    style: textButtonStyle,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}