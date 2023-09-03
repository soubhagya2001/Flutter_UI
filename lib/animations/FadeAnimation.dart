import 'package:flutter/cupertino.dart';
import 'package:simple_animations/simple_animations.dart';
class FadeAnimations extends StatefulWidget {
  final double delay;
  final Widget child;
  const FadeAnimations({super.key, required this.delay, required this.child});

  @override
  State<FadeAnimations> createState() => _FadeAnimationsState();
}

class _FadeAnimationsState extends State<FadeAnimations> {
  @override
  Widget build(BuildContext context) {


    return const Placeholder();
  }
}
