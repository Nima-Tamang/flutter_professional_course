import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layoutbuilderexample extends StatelessWidget {
  const Layoutbuilderexample({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context,constraints){
      if(constraints.minWidth > 600)
      {
        return Container(
          color:Colors.green,child :Center(child:Text('wide screen'))
        );
      }else{
        return Container(
          color:Colors.blue, child:Center(child:Text('narrow screen'))
        );
      }
    });
  }
}