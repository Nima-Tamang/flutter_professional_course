import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/FirstCard.dart';

class Wrapexample extends StatelessWidget {
  const Wrapexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Wrap(
        direction:Axis.horizontal,
        spacing: 10,
        runSpacing: 20,
        children: List.generate(10, 
        
        (index)=> FirstCard(message: '$index',  icon: Icons.group_add,),
        ),
      ));
  }
}