import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  final String name;
  final String message;
  final String avatarUrl;
  final String date;
  final int notificationCount;

  // Constructor to accept parameters
  const SecondCard({
    super.key,
    required this.name,
    required this.message,
    required this.avatarUrl,
    required this.date,
    required this.notificationCount,
  });

  // Helper function for creating a row with text
  Widget row(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        
        Expanded(
          flex: 1, 
          child: Container(
            height: 200,
            color: Colors.blue, // Background color of the container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Left column with the avatar
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(avatarUrl), // Use the passed avatar URL
                    ),
                  ],
                ),

                // Right column with name and messages
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      row(name), // Use the passed name
                      SizedBox(height: 10), // Space between name and message
                      row(message), // Use the passed message
                    ],
                  ),
                ),

                // Column for date and notification bubble
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Date Row with actual current date
                    row(date), // Use the passed date

                    SizedBox(height: 10), // Space between date and notification bubble

                    // Notification bubble
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange, // Notification color
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '$notificationCount', // Notification count
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
