import 'package:flutter/material.dart';
import 'package:flutter_common_poc/flutter_common_poc.dart';
import 'package:flutter_common_poc/src/routes.dart';
import 'package:flutter_common_poc/src/screens/screen1.dart';

import 'home.dart';

class InitApp extends StatefulWidget {
  @override
  _InitAppState createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final initialRoute = Injector.getIt.get<Routes>().home;
    return MaterialApp(
      initialRoute: initialRoute,
      routes: {
        Injector.getIt.get<Routes>().home: (c) => HomePage(),
        Injector.getIt.get<Routes>().screen1: (c) => Screen1()
      },
    );
  }
}
