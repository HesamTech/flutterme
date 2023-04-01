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
  int count = 0;
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
          child: Text(
            "You Have Pressed the Button $count times.",
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(), //Shape for Center Circle
          color: Colors.grey,
          child: Container(height: 50),
        ),

        //Start FAB (Center Circle Mode)

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.black,
          backgroundColor: Colors.green,
          elevation: 20,
          onPressed: () {
            setState(
              () {
                count++;
              },
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


// Rectangle Mode

 // floatingActionButton: FloatingActionButton.extended(
 //   foregroundColor: Colors.black,
 //   backgroundColor: Colors.green,
 //   elevation: 20,
 //   shape:
 //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
 //   label: const Text("Click"),
 //   icon: const Icon(
 //     Icons.add,
 //   ),
 //   onPressed: () {
 //     setState(
 //       () {
 //         count++;
 //       },
 //     );
 //   },
 // ),
        
