import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            leading: const Icon(Icons.back_hand),
            title: const Text("Dismissible"),
          ),
          body: const MyDismissible(),
        ),
      ),
    );
  }
}

class MyDismissible extends StatefulWidget {
  const MyDismissible({super.key});

  @override
  State<MyDismissible> createState() => _MyDismissibleState();
}

class _MyDismissibleState extends State<MyDismissible> {
  final List<Item> items = List<Item>.generate(20,
      (index) => Item(text: "Item ${index + 1}", color: ColorGn.getcolor()));

  final List<String> favorite = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          final Item item = items[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Dismissible(
              background: backCon(
                alignment: Alignment.centerLeft,
                color: Colors.redAccent,
                icon: Icons.star,
              ),
              secondaryBackground: backCon(
                alignment: Alignment.centerRight,
                color: Colors.red,
                icon: Icons.delete_sweep,
              ),
              confirmDismiss: (DismissDirection direction) async {
                if (direction == DismissDirection.endToStart) {
                  return await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.grey,
                        title: const Text("Delete Item"),
                        content: Text(
                          "Are you sure to delete ${item.text}",
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text("Delete!"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text("Cancle!"),
                          ),
                        ],
                      );
                    },
                  );
                } else if (direction == DismissDirection.startToEnd) {
                  favorite.add(item.text);
                  showModalBottomSheet<void>(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        alignment: Alignment.topLeft,
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            favorite.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
                return null;
              },
              key: Key(item.text),
              child: Container(
                height: 100,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorGn.getcolor(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    item.text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
            height: 10,
            thickness: 2,
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget backCon({
    required Alignment alignment,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      height: 100,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon,
          size: 40,
          color: Colors.yellow,
        ),
      ),
    );
  }
}

class ColorGn {
  static Random random = Random();
  static Color getcolor() {
    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }
}

class Item {
  final String text;
  final Color color;

  Item({required this.text, required this.color});
}
