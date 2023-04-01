import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  TextEditingController textController = TextEditingController(text: "FText");
  String displaytext = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: textController,
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                RegExp("[a-z]+"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  displaytext = textController.text;
                },
              );
            },
            child: const Text("Sumbit"),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            displaytext,
            style: const TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
