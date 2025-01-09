import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/NumberCard.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(20),
      child: GridView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,


          // gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
          // crossAxisSpacing: 10.0,
          // mainAxisSpacing: 10.0,
          // ),

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.10),
          itemBuilder: (context, index) =>
              Numbercard(message: "0/20", index: '$index')),
    );
  }
}
