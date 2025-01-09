import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/MyCustomButton.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Add more social login buttons as needed

          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {
                },
                child: Text("click me")),
          ),

          Container(
            height: 1000,
      
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container( 
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(color: Colors.black12),
                ),
                Positioned(
                  bottom: 10,
                  left: 50,
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                )
              ],
            ),
          ),

          MycustomButton(name: "jkfj")
        ],
      ),
    );
  }
}
