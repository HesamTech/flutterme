import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Draggscroll"),
        ),
        body: const MyDragScroll(),
      ),
    );
  }
}

class MyDragScroll extends StatefulWidget {
  const MyDragScroll({super.key});

  @override
  State<MyDragScroll> createState() => _MyDragScrollState();
}

class _MyDragScrollState extends State<MyDragScroll> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.green,
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.1,
          maxChildSize: 1,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
              ),
              child: ListView.separated(
                controller: scrollController,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      "I T E M ${index + 1}",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 20,
                  );
                },
                itemCount: 20,
              ),
            );
          },
        ),
      ],
    );
  }
}
