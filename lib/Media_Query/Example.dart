import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ResponsiveDesign(
          mobileLayout: MyMobile(),
          desktopLayout: MyDesktop(),
        ),
      ),
    );
  }
}

class MyMobile extends StatelessWidget {
  const MyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        title: const Text("M O B I L E"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.deepOrange[500],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepOrange[300],
                      height: 120,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDesktop extends StatelessWidget {
  const MyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        title: const Text("D E S K T O P"),
        leading: const Icon(Icons.computer),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.green.shade500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.green.shade300,
                            height: 120,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.green.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({
    super.key,
    required this.mobileLayout,
    required this.desktopLayout,
  });
  final Widget mobileLayout;
  final Widget desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext p0, BoxConstraints p1) {
        if (p1.maxWidth < 600) {
          return mobileLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
