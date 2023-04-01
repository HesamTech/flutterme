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
            title: const Text("Future"),
          ),
          body: const MyFutureApp(),
        ),
      ),
    );
  }
}

class MyFutureApp extends StatefulWidget {
  const MyFutureApp({super.key});

  @override
  State<MyFutureApp> createState() => _MyFutureAppState();
}

class _MyFutureAppState extends State<MyFutureApp> {
  // Database Simulation
  final Future<String> _calc = Future<String>.delayed(
    const Duration(seconds: 2),
    () => "Data Loaded",
  );

// Text Widget

  Text text(String txt) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override

  //Start Future Builder

  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _calc,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        List<Widget> children; // List of Widget fo show diffrent States

        // Giving widgets of different states to the list variable

        if (snapshot.hasData) {
          children = <Widget>[
            const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            text(
              "Result : ${snapshot.data}",
            ),
          ];
        } else if (snapshot.hasError) {
          children = <Widget>[
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            text(
              "Result : ${snapshot.error}",
            ),
          ];
        } else {
          children = <Widget>[
            const SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(),
            ),
            const SizedBox(
              height: 10,
            ),
            text("Awaiting Result....."),
          ];
        }
        return Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, children: children),
        );
      },
    );
  }
}
