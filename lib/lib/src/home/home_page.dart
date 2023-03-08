import 'package:example_light_dark_theme/lib/src/home/widgets/buttons_page.dart';
import 'package:example_light_dark_theme/lib/src/home/widgets/drawer_page.dart';
import 'package:example_light_dark_theme/lib/src/home/widgets/loading_animation_page.dart';
import 'package:example_light_dark_theme/lib/src/home/widgets/text_form_field_page.dart';
import 'package:example_light_dark_theme/lib/src/home/widgets/toggle_buttons_page.dart';
import 'package:example_light_dark_theme/lib/src/shared/stores/app_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>(
      (store) => store.themeMode,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes'),
      ),
      drawer: const DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RadioListTile(
              value: ThemeMode.light,
              groupValue: appStore.themeMode.value,
              title: const Text('Light'),
              onChanged: appStore.changeThemeMode,
            ),
            RadioListTile(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode.value,
              title: const Text('Dark'),
              onChanged: appStore.changeThemeMode,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: const [
                  TextFormFieldPage(
                    labelText: 'E-mail',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormFieldPage(
                    labelText: 'Password',
                    isPassword: true,
                  ),
                ],
              ),
            ),
            const ToggleButtonsPage(),
            const ButtonsPage(),
            const SizedBox(
              height: 20,
            ),
            const LoadingAnimationPage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Floating Button'),
        onPressed: () {},
      ),
    );
  }
}
