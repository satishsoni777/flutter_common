import 'package:flutter/material.dart';
import 'package:flutter_common_poc/src/routes.dart';
import 'package:flutter_common_poc/src/screens/screen1.dart';

import 'home.dart';

class InitApp extends StatelessWidget {
  Routes routesImpl = RoutesImpl();

  @override
  Widget build(BuildContext context) {
    final initialRoute = routesImpl.home;
    return MaterialApp(
      initialRoute: initialRoute,
      routes: {
        routesImpl.home: (c) => HomePage(),
        routesImpl.screen1: (c) => Screen1()
      },
    );
  }
}
