import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final String name;
  final String password;

  const LoginPage({
    super.key,
    required this.name,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Homepage'),
        leading: const Icon(Icons.dangerous),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("No notifications available")),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name is: $name"),
            Text("Password is: $password"),
          ],
        ),
      ),
    );
  }
}
