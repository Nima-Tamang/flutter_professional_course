import 'package:flutter/material.dart';

class Ecommercewidget extends StatelessWidget {
  final String name;
  final IconData icon; 
  const Ecommercewidget({
    super.key,
    required this.name,
    required this.icon,
  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10)
          ),
          child:Icon(icon)
          
        ),
        SizedBox(height: 10.0),
        Text(name,
        style: TextStyle(
          fontSize: 20,
        ),
        )
      ],
    );
  }
}