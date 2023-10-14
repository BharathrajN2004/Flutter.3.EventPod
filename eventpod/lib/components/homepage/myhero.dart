import 'package:flutter/material.dart';

class myhero extends StatelessWidget {
  final tag;
  final child;

  myhero({required this.tag, required this.child});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: tag,
        child: Material(
          type: MaterialType.transparency,
          child: child,
        ));
  }
}
