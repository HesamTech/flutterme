import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

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
  //Bool for CheckBoxs

  bool satVal = false;
  bool sunVal = false;
  bool monVal = false;
  bool tueVal = false;
  bool wenVal = false;
  bool thurVal = false;
  bool friVal = false;

  Widget cbox(String text, bool boolvalue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(text),

        //Start CheckBox (in Widget)

        Checkbox(
          activeColor: Colors.green,
          checkColor: Colors.white,
          shape: const CircleBorder(
            side: BorderSide(),
          ),
          value: boolvalue,
          onChanged: (bool? value) {
            setState(
              () {
                switch (text) {
                  //switch for many CheckBoxs
                  case "Sat":
                    satVal = value!;
                    break;

                  case "Sun":
                    sunVal = value!;
                    break;

                  case "Mon":
                    monVal = value!;
                    break;

                  case "Tue":
                    tueVal = value!;
                    break;

                  case "Wen":
                    wenVal = value!;
                    break;

                  case "Thur":
                    thurVal = value!;
                    break;

                  case "Fri":
                    friVal = value!;
                    break;
                }
              },
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              cbox("Sat", satVal),
              cbox("Sun", sunVal),
              cbox("Mon", monVal),
              cbox("Tue", tueVal),
              cbox("Wen", wenVal),
              cbox("Thur", thurVal),
              cbox("Fri", friVal),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //Start CheckboxListTile

          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            checkColor: Colors.white,
            activeColor: Colors.green,
            selected:
                false, //Matching all elements according to the top element
            dense: false,
            title: const Text("Hello"),
            subtitle: const Text("Wellcome!!"),
            secondary: const Icon(Icons.headphones),

            //value (With Delay Animation)

            value: timeDilation != 1.0,
            onChanged: (bool? value) {
              setState(
                () {
                  timeDilation = value! ? 10.0 : 1.0;
                },
              );
            },
          )
        ],
      ),
    );
  }
}
