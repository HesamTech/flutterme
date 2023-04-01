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
            title: const Text("Animation"),
          ),
          body: const HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Control Animation
  late Animation<double> _animation; //  Animation Variable

  @override
  // What to do when the widget starts running
  void initState() {
    super.initState();
    //  Control the Animation
    _controller = AnimationController(
      //  It helps us to make the animation run only on this page and stop for the next page
      vsync: this,
      duration: const Duration(seconds: 2), // Time of Animation
      value: 0.1, // Point of Start Animation 0.0 to 1.0
    );
    // Mode of Animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward(); // Mode of run the Animation
  }

  @override
  // To Stop Animation when go to another page
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: FadeTransition(
          opacity: _animation,
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
