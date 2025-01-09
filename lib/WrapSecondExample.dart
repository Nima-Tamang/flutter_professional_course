import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/NumberCard.dart';

class WrapSecondExample extends StatelessWidget {
  const WrapSecondExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text("Some Text",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
            decoration: TextDecoration.none,
            
          ),),
           Text('0/10',
           style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
            decoration: TextDecoration.none
           ),
           )
        ],),
        Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          
          runSpacing: 10,
          children:List.generate(10, (index) =>
            Numbercard(message: "0/20", index: '$index')
          )
        )
      ],
    );
  }
}