import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GD"),
        ),
        body: const MyGestureApp(),
      ),
    );
  }
}

class MyGestureApp extends StatefulWidget {
  const MyGestureApp({super.key});

  @override
  State<MyGestureApp> createState() => _MyGestureAppState();
}

class _MyGestureAppState extends State<MyGestureApp> {
  bool _light = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.lightbulb_circle_outlined,
              color: _light ? Colors.yellow.shade600 : Colors.black,
              size: 60,
            ),
          ),
          GestureDetector(
            onTap: () => setState(
              () {
                _light = !_light;
              },
            ),
            child: Container(
              padding: const EdgeInsets.all(15),
              child: const Text("I/O L I G H T"),
              decoration: BoxDecoration(
                color: Colors.yellow.shade600,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
