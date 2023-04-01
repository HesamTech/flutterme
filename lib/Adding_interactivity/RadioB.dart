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
  int group = 1; //int for grouping
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Start RadioB (List Mode)

          RadioListTile(
            subtitle: const Text("Girl"),
            controlAffinity:
                ListTileControlAffinity.trailing, //Change Form and Format
            secondary: const Icon(Icons.female),
            title: const Text('Female'),
            activeColor: Colors.green,
            value: 1,
            groupValue: group,
            onChanged: (int? value) {
              setState(
                () {
                  group = value!;
                },
              );
            },
          ),
          RadioListTile(
            title: const Text('Female'),
            value: 2,
            groupValue: group,
            onChanged: (int? value) {
              setState(() {
                group = value!;
              });
            },
          ),
          RadioListTile(
            title: const Text('Female'),
            value: 3,
            groupValue: group,
            onChanged: (int? value) {
              setState(
                () {
                  group = value!;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
