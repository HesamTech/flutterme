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
          appBar: AppBar(
            title: const Text(
              "Hesam",
            ),
          ),
          body: const MyNewForm(),
        ),
      ),
    );
  }
}

class MyNewForm extends StatefulWidget {
  const MyNewForm({super.key});

  @override
  State<MyNewForm> createState() => _MyNewFormState();
}

class _MyNewFormState extends State<MyNewForm> {
  double myValue = 0.0;
  RangeValues myValues = const RangeValues(0, 100);
  RangeLabels myLabels = const RangeLabels("0", "100");
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SliderTheme(
            //Slider Theme for Change front of Slider
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.blue,
              inactiveTrackColor: Colors.red,
              thumbColor: Colors.purple,
              overlayColor: Colors.green,
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
              trackShape: const RoundedRectSliderTrackShape(),
              trackHeight: 8,
              thumbShape: const RoundSliderThumbShape(
                elevation: 20,
                enabledThumbRadius: 12,
              ),
            ),

            //Start Slider (Simple)

            child: Slider(
              min: 0,
              max: 100,
              value: myValue,
              onChanged: (double value) {
                setState(
                  () {
                    myValue = value;
                  },
                );
              },
            ),
          ),

          //Start Slider (Range)

          RangeSlider(
            labels: myLabels,
            min: 0,
            max: 100,
            divisions: 10,
            values: myValues,
            onChanged: (RangeValues value) {
              myLabels = RangeLabels(
                "${value.start.toInt().toString()}\$", //Format for Price
                "${value.end.toInt().toString()}\$",
              );
              setState(
                () {
                  myValues = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
