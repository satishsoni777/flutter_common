import 'package:flutter_common_poc/src/routes.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static var getIt = GetIt.I;
  static setup() {
    print("Setp");
    getIt.registerSingleton<Routes>(RoutesImpl(), signalsReady: true);
  }
}
