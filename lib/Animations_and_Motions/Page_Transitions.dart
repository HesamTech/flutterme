import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Navigation",
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  //Start Method of Page Transition

  Route _createRoute() {
    return PageRouteBuilder(
      // Make Page
      pageBuilder: (
        BuildContext context,
        Animation animation,
        Animation secondaryAnimation,
      ) {
        return const SecondPage();
      },
      // Set Animation
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        // Mode of Animation
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: const Offset(1, 0),
              end: const Offset(0, 0),
            ).chain(
              CurveTween(curve: Curves.fastOutSlowIn),
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(seconds: 1),
    );
  }

  //End Method of Page Transition

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Transition"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text("Go to Second Page"),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}
