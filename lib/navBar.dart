import 'package:flutter/material.dart';

class navBar extends StatelessWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: Text('user'),
          accountEmail: Text('user@gmail.com'),
          currentAccountPicture: CircleAvatar(
              child: ClipOval(
            child: Image.asset(
              '',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          )),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('favorites'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Friends'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Share'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Request'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('settings'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('About me'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('favorites'),
          onTap: () => null,
        ),
      ]),
    );
  }
}
