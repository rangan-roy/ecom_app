import 'package:ecom_app/utils/button_styles.dart';
import 'package:flutter/material.dart';

class CheckoutSuccess extends StatelessWidget {
  static final String routeName = 'checkout_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your have ordered successfully. We will contact you soon.'),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text('Shop again!'),
              style: textButtonStyle,
            ),
          ],
        ),
      ),
    );
  }
}