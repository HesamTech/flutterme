import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Iv"),
        ),
        body: const MyIv(),
      ),
    );
  }
}

class MyIv extends StatefulWidget {
  const MyIv({super.key});

  @override
  State<MyIv> createState() => _MyIvState();
}

class _MyIvState extends State<MyIv> {
  static const String imageURL =
      "https://cdn01.zoomit.ir/2021/3/samsung-galaxy-note-10-front-view.jpg?w=350";
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 0.5,
      maxScale: 10,
      panEnabled: false, // No Allow to go left or right
      child: Image.network(imageURL),
    );
  }
}
