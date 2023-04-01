import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text(
          "Show Snackbar!!",
        ),
        onPressed: () {
          //Start SnackBar

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              onVisible: () {
                print("S OK");
              },
              duration: const Duration(seconds: 5),
              behavior: SnackBarBehavior.floating,
              margin: const EdgeInsets.all(15),
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.all(15),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              content: const Text(
                "This is Snackbar!!",
              ),
              action: SnackBarAction(
                //For Button of SnackBar
                label: "OK",
                textColor: Colors.black,
                disabledTextColor: Colors.teal,
                onPressed: () {
                  print("OK");
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
