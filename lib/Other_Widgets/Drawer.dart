import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Drawer"),
          ),
          drawer: const MyDrawer(),
          drawerEdgeDragWidth: 400,
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 60,
      backgroundColor: Colors.blueGrey.shade600,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            height: 200,
            alignment: Alignment.center,
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
              ),
              title: Text("H.A"),
              subtitle: Text("+98 912 345 6789"),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.group),
            title: Text("New Group"),
          ),
          const ListTile(
            leading: Icon(Icons.content_copy),
            title: Text("Contents"),
          ),
          const ListTile(
            leading: Icon(Icons.call),
            title: Text("Calls"),
          ),
          const ListTile(
            leading: Icon(Icons.near_me_rounded),
            title: Text("People Nearbody"),
          ),
          const ListTile(
            leading: Icon(Icons.flag),
            title: Text("Saved Messages"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          const Divider(
            height: 10,
            color: Colors.grey,
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.format_quote),
            title: Text("HTech FAQ"),
          ),
        ],
      ),
    );
  }
}
