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
  int sIndex = 0;

  // Start Content of Pages

  static const optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      "Index 1 : Home",
      style: optionStyle,
    ),
    Text(
      "Index 2 : Work",
      style: optionStyle,
    ),
    Text(
      "Index 3 : School",
      style: optionStyle,
    ),
    Text(
      "Index 4 : Tech",
      style: optionStyle,
    ),
  ];

  // End Content of Pages

  // Start Select items

  void onItemTapped(int index) {
    setState(
      () {
        sIndex = index;
      },
    );
  }

  // End Select items

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
        ),

        //Show Selected item's Content

        body: Center(
          child: widgetOptions.elementAt(sIndex),
        ),

        // Start BottonNB

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: sIndex, //Selected items
          onTap: onItemTapped,
          selectedItemColor: Colors.lightGreen,
          iconSize: 20,
          type: BottomNavigationBarType.shifting, //Mode of BottonSheet
          unselectedFontSize: 10,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
              backgroundColor: Colors.black,
              tooltip: "My Home",
              activeIcon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.work,
                ),
                label: "Work",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.school,
                ),
                label: "School",
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.track_changes,
                ),
                label: "Tech",
                backgroundColor: Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}
