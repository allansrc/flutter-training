import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/modules/home/pages/home_page.dart';
import 'package:flutter_modular_example/app/modules/home/pages/home_params_page.dart';
import 'package:flutter_modular_example/app/modules/home/pages/home_query_params_page.dart';
import 'package:flutter_modular_example/app/modules/home/pages/home_second_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage());
    r.child('/second-page', child: (context) => const HomeSecondPage());
    r.child(
      '/params-page/:text',
      child: (context) => HomeParamsPage(
        textParameter: Modular.args.params['text'],
      ),
    );
    r.child(
      '/query-params-page',
      child: (context) => HomeQueryParamsPage(
        textParameter: Modular.args.queryParams['text'] ?? '',
      ),
    );
  }
}
