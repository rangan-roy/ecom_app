import 'package:ecom_app/widgets/home/drawer/log_out_button.dart';
import 'package:ecom_app/widgets/home/drawer/option.dart';
import 'package:ecom_app/widgets/home/drawer/user_profile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            // user's name and images
            UserProfile(),

            // user's options
            Option(Icons.book, 'Orders', null),
            Divider(),
            Option(Icons.star, 'Reviews', null),
            Divider(),
            Option(Icons.call, 'Contact', null),
            Divider(),
            Option(Icons.location_on, 'Address', null),
            Divider(),

            // logout button
            LogOutButton(),
          ],
        ),
      ),
    );
  }
}
