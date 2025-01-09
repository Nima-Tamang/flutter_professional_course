import 'package:flutter/material.dart';

class StackUiDesign extends StatelessWidget {
  const StackUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isdark=Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color : isdark ? Colors.blue: Colors.black,
          ),
          child: Text('stack ui design'),
        )
      ],
    );
  }
}