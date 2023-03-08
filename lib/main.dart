import 'package:example_light_dark_theme/lib/src/shared/app_module.dart';
import 'package:example_light_dark_theme/lib/src/shared/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}