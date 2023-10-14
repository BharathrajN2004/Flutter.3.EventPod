import 'package:flutter/material.dart';

class searchcat extends StatelessWidget {
  const searchcat({
    Key? key,
    required this.width,
    required this.height,
    required this.searchterm,
  }) : super(key: key);

  final width;
  final height;
  final searchterm;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: width * 0.03),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 220, 220, 220), width: 2),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(172, 227, 227, 227),
                Color.fromARGB(80, 245, 245, 245)
              ]),
          borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.03, vertical: height * 0.008),
      child: Center(child: Text(searchterm)),
    );
  }
}
