import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/FirstCard.dart';
import 'package:flutter_application_1/widget/SecondCard.dart';

class MessagingExample extends StatelessWidget {
  const MessagingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0), // Add padding around the column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
            const SizedBox(height: 20), // Space between text and first list
            Container(
              height: 300, // Match height of both containers
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: FirstCard(
                      message: 'Hello from FirstCard $index',
                      icon: CupertinoIcons.chat_bubble_text_fill,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20), // Space between lists
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: SecondCard(
                      name: 'Silko Herz $index',
                      message: 'Hey! Are you free to work later?',
                      avatarUrl: 'https://via.placeholder.com/150',
                      date: DateTime.now()
                          .toLocal()
                          .toString()
                          .split(' ')[0], // Current date (formatted)
                      notificationCount: index + 1, // Dynamic notification count
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
