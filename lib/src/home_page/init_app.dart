import 'package:flutter/material.dart';
import 'package:flutter_common_poc/flutter_common_poc.dart';
import 'package:flutter_common_poc/src/routes.dart';
import 'package:flutter_common_poc/src/screens/screen1.dart';

import 'home.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class InitApp extends StatefulWidget {
  @override
  _InitAppState createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> with RouteAware {
  bool isPushed = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didPush() {
    if(!isPushed)
    print("is Pushed");
    super.didPush();
  }

  @override
  void didChangeDependencies() {
    routeObserver.subscribe(this, ModalRoute.of(context));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final initialRoute = Injector.getIt.get<Routes>().home;
    return MaterialApp(
      initialRoute: initialRoute,
      navigatorObservers: [routeObserver],
      routes: {
        Injector.getIt.get<Routes>().home: (c) => HomePage(),
        Injector.getIt.get<Routes>().screen1: (c) => Screen1()
      },
    );
  }
}
