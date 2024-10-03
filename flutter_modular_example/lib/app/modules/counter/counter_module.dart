import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/counter/pages/counter_page.dart';
import 'package:flutter_modular_example/app/modules/counter/value_notifiers/counter_notifier.dart';

class CounterModule extends Module {
  @override
  void binds(i) {
    i.add(CounterNotifier.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => CounterPage(
        counterNotifier: Modular.get<CounterNotifier>(),
      ),
    );
  }
}
