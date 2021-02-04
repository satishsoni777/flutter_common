import 'package:flutter/material.dart';
import 'package:flutter_common_poc/src/di/di.dart';
import 'package:flutter_common_poc/src/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() => Injector.setup();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: FlatButton(
            child: Text("On Press"),
            onPressed: () {
              Navigator.pushNamed(context, Injector.getIt.get<Routes>().screen1);
            },
          ),
        ));
  }
}
