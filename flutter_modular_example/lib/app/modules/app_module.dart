import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/home/home_module.dart';
import 'package:flutter_modular_example/app/modules/nested/nested_module.dart';
import 'package:flutter_modular_example/app/wildcards/wildcard_page.dart';

import 'counter/counter_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
    r.module('/counter/', module: CounterModule());
    r.module('/nested/', module: NestedModule());
    r.child('/', child: (context) => WildcardPage());
  }
}
