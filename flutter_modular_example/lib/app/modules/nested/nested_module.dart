import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/nested/pages/nested_page.dart';
import 'package:flutter_modular_example/app/modules/nested/submodules/module_a/module_a.dart';
import 'package:flutter_modular_example/app/modules/nested/submodules/module_b/module_b.dart';

class NestedModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => NestedPage());
    r.module('/module-a/', module: ModuleA());
    r.module('/module-b/', module: ModuleB());
  }
}
