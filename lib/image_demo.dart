import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark =Theme.of(context).brightness ==Brightness.dark;
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 200,
          width: 200,
          color: isDark ? Colors.black :Colors.white,
          child: Image.asset("assets/images/images.jpg"),
        ),
        Icon(
          Icons.ac_unit
        ),
        Icon(
          CupertinoIcons.arrowshape_turn_up_right_circle
        )
      ],
    ));
  }
}
