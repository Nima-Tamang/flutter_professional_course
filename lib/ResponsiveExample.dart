import 'package:flutter/material.dart';

class ResponsiveExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Text(
          'Width: $screenWidth, Height: $screenHeight',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
