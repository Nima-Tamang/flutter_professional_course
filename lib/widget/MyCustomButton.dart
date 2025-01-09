import 'package:flutter/material.dart';

class MycustomButton extends StatelessWidget {
  final String name;
  const MycustomButton({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){},
      child:Container(
        height: 25,
        width: 200,
        
        decoration:BoxDecoration(color:Colors.black26,borderRadius: BorderRadius.circular(10)),
        child :Text(name),
      )
    );
  }
}