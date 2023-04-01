import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'comic'),
      debugShowCheckedModeBanner: false,
      home: const MyPage(title: "Hesam"),
    );
  }
}

class MyPage extends StatefulWidget {
  final String title;
  const MyPage({super.key, required this.title});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              //Start BottomSheet

              onPressed: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.transparent,
                  isDismissible: false, //Gone with tap on Screen
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "HTechno",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text(
                "Click",
              ),
            ),
          ),
        ),

        // Stable Mode

        // bottomSheet: Container(
        //   color: Colors.blueGrey,
        //   height: 60,
        //   alignment: Alignment.center,
        //   child: const Text(
        //     "Hi",
        //     style: TextStyle(
        //       fontSize: 30,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
