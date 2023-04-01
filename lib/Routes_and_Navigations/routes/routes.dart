import 'package:flutter/material.dart';
import '../screens/firstroute.dart';
import '../screens/secondroute.dart';

final Map<String, WidgetBuilder> routes = {
  FirstRoute.routeName: (context) => const FirstRoute(),
  SecondRoute.routeName: (context) => const SecondRoute(),
};
