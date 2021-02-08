import 'package:flutter/material.dart';
import 'package:flutter_common_poc/flutter_common_poc.dart';
import 'package:flutter_common_poc/src/di/di.dart';
import 'package:flutter_common_poc/src/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: PageView(
          controller: _controller,
          children: [
            FlatButton(
              child: Text("Left Screen"),
              onPressed: () {
                Navigator.pushNamed(
                    context, Injector.getIt.get<Routes>().screen1);
              },
            ),
            FlatButton(
              child: Text("Home Screen"),
              onPressed: () {
                Navigator.pushNamed(
                    context, Injector.getIt.get<Routes>().screen1);
              },
            ),
            FlatButton(
              child: Text("Right Screen"),
              onPressed: () {
                Navigator.pushNamed(
                    context, Injector.getIt.get<Routes>().screen1);
              },
            ),
          ],
        ));
  }
}
