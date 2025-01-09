import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.blue
          ),
          child: Text(
            'this is warp example'
          ),
        )
      ],
    );
  }
}