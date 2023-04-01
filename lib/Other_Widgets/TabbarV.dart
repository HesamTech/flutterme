import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTabBar(),
    );
  }
}

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  title: Text("TabbbarV"),
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.green,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 5,
                    indicator: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                    tabs: <Widget>[
                      Tab(icon: Icon(Icons.flight)),
                      Tab(icon: Icon(Icons.directions_transit)),
                      Tab(icon: Icon(Icons.directions_car)),
                      Tab(icon: Icon(Icons.directions_bike)),
                      Tab(icon: Icon(Icons.directions_boat)),
                      Tab(icon: Icon(Icons.directions_bus)),
                      Tab(icon: Icon(Icons.directions_ferry)),
                      Tab(icon: Icon(Icons.directions_walk)),
                      Tab(icon: Icon(Icons.directions_run)),
                      Tab(icon: Icon(Icons.directions_subway)),
                    ],
                  ),
                )
              ];
            },
            body: const TabBarView(
              children: <Widget>[
                Icon(Icons.flight, size: 300),
                Icon(Icons.directions_transit, size: 300),
                Icon(Icons.directions_car, size: 300),
                Icon(Icons.directions_bike, size: 300),
                Icon(Icons.directions_boat, size: 300),
                Icon(Icons.directions_bus, size: 300),
                Icon(Icons.directions_ferry, size: 300),
                Icon(Icons.directions_walk, size: 300),
                Icon(Icons.directions_run, size: 300),
                Icon(Icons.directions_subway, size: 300),
              ],
            ),
          ),
        ));
  }
}
