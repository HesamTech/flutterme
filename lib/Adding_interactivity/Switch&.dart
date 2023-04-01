import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Text("Hesam"),
          ),
          body: const MyPage(),
        ),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool isSwitched = true;
  Color iconcolor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Start Switch (ListTile Mode)

          SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 100,
            ),
            subtitle: const Text("This is S"),
            title: const Text("Light"),
            activeColor: Colors.yellow,
            secondary: Icon(
              Icons.light_mode_rounded,
              color: iconcolor,
            ),
            value: isSwitched,
            onChanged: (bool value) {
              setState(
                () {
                  isSwitched = value;
                  if (isSwitched == true) {
                    iconcolor = Colors.yellow;
                  } else {
                    iconcolor = Colors.white;
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
