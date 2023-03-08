import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingAnimationPage extends StatelessWidget {
  const LoadingAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.discreteCircle(
      color: Theme.of(context).indicatorColor,
      secondRingColor: Theme.of(context).shadowColor,
      thirdRingColor: Theme.of(context).primaryColor,
      size: 40,
    );
  }
}
