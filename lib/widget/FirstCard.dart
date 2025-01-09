import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  final String message;
  final IconData icon;

  const FirstCard({
    super.key,
    required this.message,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Fixed height for the card
      width: 200, // Fixed width for the card
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 211, 76, 14), // Card background color
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
      ),
      child: Center( // Centers the content inside the card
        child: Column(
          mainAxisSize: MainAxisSize.min, // Content takes only the required vertical space
          children: [
            Icon(
              icon,
              size: 40.0, // Icon size
              color: const Color(0xFFCD8C0B), // Icon color
            ),
            const SizedBox(height: 10.0), // Space between icon and text
            Text(
              message,
              style: const TextStyle(
                fontSize: 18.0, // Text size
                color: Colors.white, // Text color
                fontWeight: FontWeight.bold, // Bold text
              ),
              textAlign: TextAlign.center, // Center-align text
            ),
          ],
        ),
      ),
    );
  }
}
