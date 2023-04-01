import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  static String routeName = '/second';
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final Map value = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Delete Back Button
          title: const Text("R&N2"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(55.0),
                child: Text(
                  value["value"],
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back Route"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
