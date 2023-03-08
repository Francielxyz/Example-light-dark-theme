import 'package:example_light_dark_theme/lib/src/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, arg) => const HomePage()),
      ];
}
