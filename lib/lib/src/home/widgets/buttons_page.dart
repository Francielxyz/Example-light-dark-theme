import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.electric_bike),
            label: const Text('Text Button Icon Left'),
          ),
          const SizedBox(
            height: 15,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.cable_rounded),
              label: const Text('Text Button Icon Right'),
            ),
          ),
        ],
      ),
    );
  }
}
