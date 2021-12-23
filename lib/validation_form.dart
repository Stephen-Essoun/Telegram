import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() {
    return _MyCustomFormState();
  }
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              validator: (emailValidator) {
                if (emailValidator!.isEmpty) {
                  if (emailController.text.contains("@")) {
                  } else {
                    return "check your emai";
                  }
                  return "Please check your email address";
                }
              },
            ),
            TextButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Log in Successfull")));
                  }
                },
                child: Text("LogIn"))
          ],
        ),
      ),
    );
  }
}
