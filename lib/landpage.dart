import 'package:flutter/material.dart';

class Landpage extends StatelessWidget {
  const Landpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          height: 300,
          width:300,
          decoration: BoxDecoration(color: Colors.blue),
          child: Row(      
            children: [

                Text(
                ('hi nima ')
                
              ),
              Spacer(),
              SizedBox(
               
                height: 30,
                width: 100,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.notifications),
                    Positioned(
                      top: 0,
                      right: 34,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: Colors.amber, shape: BoxShape.circle),
                        child: Text("3"),
                      ),
                    )
                  ],
                ),
              ),

            
            ],
          ),
        ),

        Container(
          height:300,
          width:200,
          decoration:BoxDecoration(color :Colors.amber)
        )
      ],
    ));
  }
}
