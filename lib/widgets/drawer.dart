import 'package:flutter/material.dart';


class UserDrawer extends StatelessWidget {
  final String userName = 'Keitumetse Dikolomela';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.insert_chart,),
            title: Text('My Activities', style: TextStyle(fontSize: 16)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settins', style: TextStyle(fontSize: 16),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.headset_mic,),
            title: Text('Support', style: TextStyle(fontSize: 16),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new,),
            title: Text('Logout', style: TextStyle(fontSize: 16),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          DrawerHeader(

            child: UserAccountsDrawerHeader(
              accountName: Text(userName, ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
            )
          ),
        ],
      ),
    );
  }
}
