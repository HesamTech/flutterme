import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hero Animation",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
      ),

      // Hero Animation

      body: Hero(
        tag: "Flutter Logo",
        //Same Ink
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HeroPage(),
            ),
          ),
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Hero(
          // PlaceHolder : for when data get from api to wait animaton
          placeholderBuilder: (
            BuildContext context,
            Size heroSize,
            Widget child,
          ) {
            return const CircularProgressIndicator();
          },
          tag: "Flutter Logo",
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Center(
              child: FlutterLogo(
                size: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
