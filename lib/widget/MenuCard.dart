import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;

  const MenuCard({
    Key? key,
    required this.title,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
        side: BorderSide(color: color, width: 2.0), // Border color and width
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        leading: Icon(
          icon,
          color: color,
          size: 30.0,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: color,
        ),
        onTap: () {
          // Handle onTap event here, e.g., navigation or action
          print('Tapped on $title');
        },
      ),
    );
  }
}
