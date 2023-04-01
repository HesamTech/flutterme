import 'package:flutter/material.dart';
import '../Routes_and_Navigations/routes/routes.dart';
import '../Routes_and_Navigations/screens/firstroute.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Introduction Pages

      initialRoute: FirstRoute.routeName,
      routes: routes,
    );
  }
}
