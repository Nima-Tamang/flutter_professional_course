import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/user_cubit.dart';
import 'package:flutter_application_1/cubitpage/second_page.dart';
import "package:flutter_bloc/flutter_bloc.dart";
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _nameController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();

    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _nameController,
              validator: (value) {
                if (value == null || value == "") {
                  return "Value is required";
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: "Enter Your name",
                  label: Text('Full name'),
                  fillColor: Colors.blue,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate())
                    context.read<UserCubit>().updateUser(_nameController.text);
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('User added')));
                },
                child: Text('save Data')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                },
                child: Text('see Data'))
          ],
        ),
      ),
    ));
  }
}
