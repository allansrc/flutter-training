import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/home/home_module.dart';
import 'package:flutter_modular_example/app/modules/nested/nested_module.dart';
import 'package:flutter_modular_example/app/wildcards/wildcard_page.dart';

import 'counter/counter_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: HomeModule(),
        ),
        ModuleRoute(
          '/counter/',
          module: CounterModule(),
        ),
        ModuleRoute('/nested/', module: NestedModule()),
        WildcardRoute(child: (context, args) => const WildcardPage())
      ];
}
