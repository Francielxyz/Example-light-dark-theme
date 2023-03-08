import 'package:example_light_dark_theme/lib/src/home/widgets/home_module.dart';
import 'package:example_light_dark_theme/lib/src/shared/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds =>
      [
        Bind.singleton((i) => AppStore()),
      ];

  @override
  List<ModularRoute> get routes =>
      [
        ModuleRoute('/', module: HomeModule()),
      ];
}
