import 'package:flutter/material.dart';

class ToggleButtonsPage extends StatefulWidget {
  const ToggleButtonsPage({super.key});

  @override
  State<ToggleButtonsPage> createState() => _ToggleButtonsPageState();
}

class _ToggleButtonsPageState extends State<ToggleButtonsPage> {
  List<Widget> fruits = <Widget>[
    const Text('Real Madrid'),
    const Text('Santos FC'),
    const Text('Brasil')
  ];
  final List<bool> _selectedFruits = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
      child: ToggleButtons(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        constraints: const BoxConstraints(
          minHeight: 40,
          minWidth: 90,
        ),
        isSelected: _selectedFruits,
        children: fruits,
        onPressed: (int index) {
          setState(
            () {
              for (var i = 0; i < _selectedFruits.length; i++) {
                _selectedFruits[i] = i == index;
              }
            },
          );
        },
      ),
    );
  }
}
