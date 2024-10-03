import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/nested/submodules/module_a/pages/module_b_page.dart';

class ModuleA extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => ModuleAPage());
  }
}
