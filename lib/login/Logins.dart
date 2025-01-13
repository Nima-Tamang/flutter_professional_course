import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';

class Logins extends StatefulWidget {
  const Logins({super.key});

  @override
  State<Logins> createState() => _LoginState();
}

class _LoginState extends State<Logins> {
  
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool _isObscured = true;

  @override
  void dispose() {
    super.dispose();

    _nameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Form(
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
          TextFormField(
            obscureText: _isObscured,
            controller: _passwordController,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    icon: _isObscured
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
                hintText: "Enter you name",
                label: Text('Enter your password'),
                fillColor: Colors.blue,
                filled: true,
                focusColor: Colors.amber,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder:(context)=>GridViewExample(),
                  //   ),
                  // );

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(
                          name: _nameController.text,
                          password: _passwordController.text),
                    ),
                    (route) => false,
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
