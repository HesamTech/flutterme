import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //Start Choose DeviceOrientation

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //End Choose DeviceOrientation

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'comic'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hesam"),
        ),
        body: const MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Get The lesser of the magnitudes of the [width] and the [height].
    final double size = MediaQuery.of(context).size.shortestSide;
    MediaQueryData deviceInfo = MediaQuery.of(context);
    Color color = size < 600 ? Colors.green : Colors.red; //If to Change Color

    return Container(
      color: color,
      width: deviceInfo.size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("1- Padding : ${deviceInfo.padding},"), //Notch Or NO
            Text("2- Orientation : ${deviceInfo.orientation},"), //Orientation
            Text("3- ViewInsert : ${deviceInfo.viewInsets},"),
            Text(
                "4- PlatformBrightness : ${deviceInfo.platformBrightness},"), //Theme
            Text(
                "5- AlwaysUse24HoursFormatter : ${deviceInfo.alwaysUse24HourFormat},"),
          ],
        ),
      ),
    );
  }
}
