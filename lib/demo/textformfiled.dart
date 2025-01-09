import 'package:flutter/material.dart';

class Textformfilleddemo extends StatelessWidget {
  const Textformfilleddemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black
          ),
          child: Text(
            'this textform field example'
          ),
        )
      ],
    );
  }
}