import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'comic'),
      debugShowCheckedModeBanner: false,
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hesam",
          ),
          actions: <Widget>[
            //Start PopupMB

            PopupMenuButton(
              elevation: 50,
              color: Colors.blueGrey,
              icon: const Icon(Icons.menu),
              tooltip: "Menu",
              splashRadius: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              itemBuilder: (BuildContext context) {
                // Items
                return [
                  const PopupMenuItem(value: "/chat", child: Text("Chat")),
                  const PopupMenuItem(value: "/about", child: Text("About Us")),
                  const PopupMenuItem(
                      value: "/contact", child: Text("Cntact Us")),
                ];
              },
            )
          ],
        ),
      ),
    );
  }
}
