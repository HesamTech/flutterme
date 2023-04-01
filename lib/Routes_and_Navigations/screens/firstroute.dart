import 'package:flutter/material.dart';

class FirstRoute extends StatefulWidget {
  static String routeName = '/first';

  const FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("R&N"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  autofocus: true,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (String text) => value = text,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //Start R&N
                  Navigator.pushNamed(
                    context,
                    "/second",
                    arguments: <String, String>{
                      "value": value,
                    },
                  );
                },
                child: const Text("Go to Second Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
