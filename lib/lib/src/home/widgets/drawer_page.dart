import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 115.6,
            child: DrawerHeader(
              child: Text('Opções'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.sync),
            title: const Text('Sincronizar'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.close),
            title: const Text('Sair'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
