import 'package:ecom_app/utils/button_styles.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  static final String routeName = 'checkout';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            // name
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              validator: (String value) {
                if(value.isEmpty) {
                  return 'Name is required.';
                } else return null;
              },
              onSaved: (String value) {},
            ),
            SizedBox(height: 20),

            // phone
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
              ),
              validator: (String value) {
                if(value.isEmpty) {
                  return 'Phone is required.';
                } else return null;
              },
              onSaved: (String value) {},
            ),
            SizedBox(height: 20),

            // address
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              validator: (String value) {
                if(value.isEmpty) {
                  return 'Address is required.';
                } else return null;
              },
              onSaved: (String value) {},
            ),
            SizedBox(height: 20),

            // place order button
            TextButton(
              onPressed: () {
                if(_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              },
              child: Text('Place Order'),
              style: textButtonStyle,
            )
          ],
        ),
      ),
    );
  }
}