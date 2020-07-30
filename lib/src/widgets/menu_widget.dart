import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),

            child: Text(
              'Woler',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),

            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage('assets/menu-img.jpg'),
            //         fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.group, color: Colors.blue),
            title: Text('New Gruop'),
            onTap: () {
              // change app state...
              Navigator.pushNamed(context, '/');
              // Navigator.pop(context); // close the drawer
            },
            // Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.lock_outline, color: Colors.blue),
            title: Text('New Secret Chat'),
            onTap: () {
              // change app state...
              Navigator.pushNamed(context, '/s'); // close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.volume_down, color: Colors.blue),
            title: Text('New Channel'),
            onTap: () {
              // change app state...
              Navigator.pushNamed(context, '/s'); // close the drawer
            },
          ),
          ListTile(
              leading: Icon(Icons.perm_identity, color: Colors.blue),
              title: Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, '/s');
              }),
        ],
      ),
    );
  }
}
