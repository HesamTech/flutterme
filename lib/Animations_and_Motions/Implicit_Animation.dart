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
            title: const Text("Hesam"),
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

class _HomePageState extends State<HomePage> {
  double _opacity = 0;
  bool _selected = false;
  bool _selected2 = false;
  bool _selected3 = false;

  double padValue = 0;
  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          // -------------------- Opacity Animation ----------
          Column(
            children: <Widget>[
              const Text("-- Opacity Animation --"),
              TextButton(
                onPressed: () {
                  setState(() {
                    // SetState for Change of double
                    if (_opacity == 0) {
                      _opacity = 1;
                    } else {
                      _opacity = 0;
                    }
                  });
                },
                child: const Text(
                  "Show Details",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(seconds: 1), // Time of Animation
                curve: Curves.easeInExpo, // Mode of Animation
                opacity: _opacity,
                child: Column(
                  children: const <Widget>[
                    Text(
                      "Roude",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text("United State"),
                    Text("94 Km"),
                  ],
                ),
              )
            ],
          ),
          // -------------------- Align Animation ----------
          Column(
            children: <Widget>[
              const Text("-- Align Animation --"),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: InkResponse(
                    onTap: () {
                      setState(() {
                        _selected = !_selected;
                      });
                    },
                    child: Container(
                      color: Colors.blueGrey,
                      width: 100,
                      height: 100,
                      child: AnimatedAlign(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                        alignment: _selected
                            ? Alignment.topRight
                            : Alignment.bottomLeft,
                        child: const FlutterLogo(
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // -------------------- Container Animation ----------
          Column(
            children: <Widget>[
              const Text("-- Container Animation --"),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: InkResponse(
                    onTap: () {
                      setState(() {
                        _selected2 = !_selected2;
                      });
                    },
                    child: AnimatedContainer(
                      width: _selected2 ? 100 : 50,
                      height: _selected2 ? 50 : 100,
                      color: _selected2 ? Colors.blue : Colors.red,
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      alignment: _selected2
                          ? Alignment.center
                          : Alignment.bottomCenter,
                      child: const FlutterLogo(
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // -------------------- TextStyle Animation ----------
          Column(
            children: <Widget>[
              const Text("-- TextStyle Animation --"),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: InkResponse(
                    onTap: () {
                      setState(() {
                        _selected3 = !_selected3;
                      });
                    },
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      style: TextStyle(
                        fontSize: _selected3 ? 40 : 20,
                        color: _selected3 ? Colors.blueGrey : Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                      child: const Text("Flutter"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // -------------------- Padding Animation ----------
          Column(
            children: <Widget>[
              const Text("-- Padding Animation --"),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AnimatedPadding(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  padding: EdgeInsets.all(padValue),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Text(
                padValue.toString(),
              ),
              ElevatedButton(
                onPressed: () {
                  _updatePadding(padValue == 0 ? 10 : 0);
                },
                child: const Icon(Icons.change_circle),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selected = !_selected;
                    _selected2 = !_selected2;
                    _selected3 = !_selected3;
                    _updatePadding(padValue == 0 ? 10 : 0);
                  });
                },
                child: const Icon(
                  Icons.change_circle_sharp,
                  size: 80,
                )),
          )
        ],
      ),
    );
  }
}
