import 'package:flutter/material.dart';
import 'package:flutter_common_poc/flutter_common_poc.dart';

void main() {
  Injector.getIt.registerSingleton<Routes>(RoutesImpl());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: InitApp());
  }
}
