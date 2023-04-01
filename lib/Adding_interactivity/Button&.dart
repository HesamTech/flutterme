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
  double volume = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          //TextButton

          TextButton.icon(
            icon: const Icon(Icons.telegram),
            label: const Text("Click Telegram"),
            onPressed: () {},
            style: TextButton.styleFrom(
              elevation: 20,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              shadowColor: Colors.blueGrey,
              foregroundColor: Colors.blue,
              backgroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 20),
            ),
          ),

          //ElwvateButton (with icon)

          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.whatshot),
            label: const Text("Click WhatsApp"),
            style: ElevatedButton.styleFrom(
              elevation: 20,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              shadowColor: Colors.blueGrey,
              foregroundColor: Colors.green,
              backgroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 20),
            ),
          ),

          //OutlinedButton
          //The most important difference is the line around the button

          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueGrey,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            child: const Text("Click"),
            onPressed: () {},
          ),
          Column(
            children: <Widget>[
              //Clickable icon

              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.lime,
                ),
                child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 30,
                  color: Colors.green,
                  splashColor: Colors.blue,
                  highlightColor: Colors.purple,
                  tooltip: "Volume UP +10",
                  onPressed: () {
                    setState(
                      () {
                        if (volume < 100) {
                          volume += 10;
                        }
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.volume_up,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  10.0,
                ),
                child: Text(
                  "Volume : $volume",
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.brown,
                ),
                child: IconButton(
                  alignment: Alignment.center,
                  iconSize: 30,
                  color: Colors.red,
                  splashColor: Colors.yellow,
                  highlightColor: Colors.orange,
                  tooltip: "Volume UP -10",
                  onPressed: () {
                    setState(
                      () {
                        if (volume > 0) {
                          volume -= 10;
                        }
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.volume_down,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
