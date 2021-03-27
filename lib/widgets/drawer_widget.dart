import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            // user's name and image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/user_profile_cover.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListTile(
                tileColor: Colors.white30,
                leading: CircleAvatar(
                  // if user has uploaded profile picture
                  backgroundImage: AssetImage('images/user_profile_cover.jpg'),
                  // if user has not uploaded profile picture yet
                  child: Icon(Icons.person),
                ),
                title: Text('Hello!'),
                subtitle: Text('Rangan Roy'),
              ),
            ),

            // user's options
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Orders'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade300,
              ),
              onTap: () {},
            ),
            
            Divider(),

            ListTile(
              leading: Icon(Icons.star),
              title: Text('Reviews'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade300,  
              ),
              onTap: () {},
            ),
            
            Divider(),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade300,
              ),
              onTap: () {},
            ),
            
            Divider(),
            
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade300,
              ),
              onTap: () {},
            ),

            Divider(),

            // logout button
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                child: Text('Log Out'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
