import 'package:flutter/material.dart';

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
          backgroundColor: Colors.white,
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
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: ElevatedButton(
            child: const Text(
              "Click",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),

            // Start AlertD

            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Error !!"),
                  content: const SingleChildScrollView(
                    child: Text(
                      "Gubergren duo et invidunt consetetur elitr ipsum justo diam, sit dolor eirmod elitr eirmod dolor, erat et sit sit dolores ea sea tempor erat dolor. Accusam kasd invidunt sed tempor. Ut lorem nonumy sadipscing eos stet lorem takimata sadipscing. Lorem diam et dolor ut labore erat. Ut voluptua eirmod diam gubergren, at kasd ut dolor at, at justo duo ea nonumy amet at ut. Eos est justo rebum no labore ipsum. Et dolor voluptua gubergren diam diam et eirmod takimata amet, sed ut diam consetetur rebum, clita sadipscing dolores no sadipscing, amet et labore ipsum est ipsum vero at gubergren eos, at sed eirmod lorem ut. Eirmod rebum eos dolor dolor tempor et et et. Labore ea no lorem et invidunt. Vero ut sed rebum kasd invidunt, vero takimata dolor dolor sit duo, lorem at nonumy amet ipsum diam lorem, et amet lorem sanctus magna dolore sed dolore justo, sea et at sea labore ipsum diam tempor ipsum, dolor tempor sanctus sadipscing erat est lorem. Justo lorem ipsum consetetur dolor et eos ut amet sit. Sea nonumy gubergren eos ipsum, ea magna et no aliquyam ipsum eirmod lorem dolores clita. Sit accusam rebum erat lorem sed nonumy duo amet rebum. Takimata tempor at accusam vero, rebum kasd sed erat dolor est labore, diam duo sed ipsum at sed ea. Aliquyam lorem sed eirmod sed et dolor clita tempor, lorem sed dolores sed elitr, ea rebum justo lorem no sed diam et duo elitr. Accusam takimata aliquyam sit consetetur takimata no consetetur. Erat aliquyam sed lorem dolor rebum et, dolor sit lorem dolore dolor sit. Et vero invidunt justo diam vero invidunt et accusam et, consetetur justo clita duo sadipscing diam ipsum diam, voluptua dolores dolor justo amet diam diam dolor nonumy labore, stet justo eos diam kasd sadipscing voluptua sadipscing eirmod kasd, et ut no et takimata dolore takimata et et amet, vero nonumy dolores erat dolor sit aliquyam sit duo stet, kasd et lorem lorem gubergren clita dolore ipsum. Ea aliquyam dolores stet ut nonumy lorem. Et ea duo aliquyam tempor sadipscing clita eirmod et, dolores sanctus voluptua rebum invidunt, invidunt voluptua lorem rebum diam gubergren no ea gubergren labore, et clita eirmod lorem elitr invidunt no diam, erat et amet tempor nonumy. Sit eirmod et sed takimata. Dolores sadipscing sea elitr takimata sit eos erat, vero amet sed dolor tempor takimata, eirmod consetetur sadipscing elitr et sadipscing ut.",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Agree",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                  backgroundColor: Colors.grey,
                  contentTextStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  titleTextStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 40,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
