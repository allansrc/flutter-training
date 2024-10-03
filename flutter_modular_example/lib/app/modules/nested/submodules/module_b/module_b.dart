import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/nested/submodules/module_b/pages/module_b_page.dart';

class ModuleB extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => ModuleBPage());
  }
}
