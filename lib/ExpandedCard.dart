import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expandedcard extends StatelessWidget {
  const Expandedcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex:1,
        child: Container(
        height: 200,
        width: 200,
        color: Colors.blue
      ),
      ),
      Expanded(
        flex:1,
        child: Container(
        height: 200,
        width: 300,
        color: Colors.red
      ))
    ],);
  }
}