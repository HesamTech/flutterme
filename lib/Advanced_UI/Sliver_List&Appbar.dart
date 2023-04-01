import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppState(),
    );
  }
}

class MyAppState extends StatefulWidget {
  const MyAppState({super.key});

  @override
  State<MyAppState> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sliver List & Appbar"),
        ),

        // Start Sliver

        body: CustomScrollView(
          slivers: <Widget>[
            // Start Sliver AppBar
            const SliverAppBar(
              expandedHeight: 200,
              title: Text("One"),
              leading: Icon(
                Icons.account_balance_wallet,
              ),
              pinned: true,
              snap: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(),
            ),

            // End Sliver AppBar
            // Sliver List

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: Colors.blueGrey,
                    height: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      "Hesam",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                childCount: 20, // Number of Widget
              ),
            ),
          ],
        ),
      ),
    );
  }
}
