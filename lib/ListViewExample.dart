import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/MenuCard.dart';

class Listviewexample extends StatelessWidget {
  const Listviewexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('list view data Example')),
      body:ListView.builder(
        itemCount:10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return MenuCard(
            title:'$index',
            color:Colors.blue,
            icon:Icons.group_add,
          );
        }
      )
    );
  }
}