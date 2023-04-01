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
  final List<String> _months = [
    "Tir",
    "Mordad",
    "Shahrivar"
  ]; //List of Selections
  String _cISelected = "Tir"; //First Select
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(
                color: Colors.blueGrey,
                width: 2,
              ),
            ),

            //Start DropdownButton

            child: DropdownButton<String>(
              isExpanded: true,
              alignment: Alignment.center,
              icon: const Icon(null),
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
              underline: const SizedBox(),

              //^?

              items: _months.map(
                (String dSitem) {
                  return DropdownMenuItem<String>(
                    value: dSitem,
                    child: Text(dSitem),
                  );
                },
              ).toList(),
              value: _cISelected,
              onChanged: (String? value) {
                setState(
                  () {
                    _cISelected = value!;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
