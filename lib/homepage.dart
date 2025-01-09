// import 'package:flutter/material.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         //navbar
//         appBar: AppBar(
//           title: const Text(
//             'Rows and Columns',
//             style: TextStyle(
//               color: Colors.blue,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           centerTitle: false,
//           backgroundColor: Colors.amber,
//         ),
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(color: Colors.blueGrey),
//                 ),
//                 Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(color: const Color.fromARGB(66, 177, 29, 29)),
//                 ),
//                 Container(
//                   height: 300,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     color: Colors.black26,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Centered Text",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // First Row
          Row(
            children: [
              Container(
                height: 200,
                width: 800,
                decoration: const BoxDecoration(color: Colors.blueGrey),
              ),
              Container(
                height: 200,
                width: 800,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(66, 18, 5, 5),
                ),
              ),
            ],
          ),
          // Second Row
          Row(
            children: [
              Container(
                height: 200,
                width: 1500,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 195, 204, 211)),
              ),
              Container(
                height: 200,
                width: 800,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ],
          ),

      Row(
  children: [
    // First Column
    Column(
      children: [
        Row(
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.blue, // Set a color or decoration
            ),
            Container(
              height: 300,
              width: 400,
              color: Colors.red, // Set a color or decoration
            ),
          ],
        ),
      ],
    ),
    // Second Column with decoration
    Column(
      children: [
        Container(
          height: 300,
          width: 400,
          color: Colors.green, // Green container
          child: Center(
            child: Text(
              'Second Column',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        Container(
          height: 300,
          width: 400,
          color: Colors.orange, // Orange container
          child: Center(
            child: Text(
              'Another Container',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    ),
  ],
)

        ],
      ),
    );
  }
}
