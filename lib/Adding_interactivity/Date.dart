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
  //Start DateTime and Properties

  DateTime sDate = DateTime.now();
  selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      helpText: "Help",
      cancelText: "Cancle",
      confirmText: "Confirm",
      initialDatePickerMode: DatePickerMode.day, //Show First of Selection
      context: context,
      initialDate: sDate, //Enter Properties
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );

    //Show Date

    if (picked != null && picked != sDate) {
      setState(
        () {
          sDate = picked;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: ElevatedButton(
            onPressed: () => selectedDate(context), //^
            child: const Text(
              "Pick Data",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            // Delete Time
            "${sDate.toLocal()}".split(" ")[0],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
