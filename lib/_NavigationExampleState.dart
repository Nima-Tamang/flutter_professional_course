import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/stack_ui_design.dart';
import 'package:flutter_application_1/demo/textformfiled.dart';
import 'package:flutter_application_1/demo/wrap_example.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentIndex = 0;

  final List<Widget> screens = [
    StackUiDesign(),
    Textformfilleddemo(),
    WrapExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.usb_rounded),
                label: 'Login',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.stacked_bar_chart), label: 'Stack Example'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: 'Wrap Example')
            ]),
        body: screens[currentIndex]);
  }
}
