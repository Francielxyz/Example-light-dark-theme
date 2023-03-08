import 'package:flutter/material.dart';

class AlterThemePage extends StatelessWidget {
  const AlterThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Theme.of(context).bottomAppBarColor,
        foregroundColor:Theme.of(context).primaryColor,
        child: const Text('L'),
      ),
    );
  }
}
