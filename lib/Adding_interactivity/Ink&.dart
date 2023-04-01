import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'comic'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
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
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkResponse(
            splashColor: Colors.blue,
            highlightColor: Colors.green,
            onTap: () {
              setState(
                () {
                  count++;
                },
              );
            },
            child: const Icon(
              Icons.add_circle,
              size: 50,
            ),
          ),
          Text(
            "$count",
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
          InkWell(
            splashColor: Colors.red,
            highlightColor: Colors.yellow,
            onTap: () {
              setState(() {
                count--;
              });
            },
            child: const Icon(
              Icons.remove_circle,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
