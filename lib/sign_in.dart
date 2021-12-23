import 'package:flutter/material.dart';
import 'package:jea_1/home_page.dart';

// ignore: must_be_immutable
class SignInForm extends StatelessWidget {
  SignInForm({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            height: MediaQuery.of(context).size.height / 3,
            // color:Colors.green
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/aej.jpg"),
            ))),
        SizedBox(height: MediaQuery.of(context).size.height * 0.00),
        Expanded(
            child: Container(
          child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                TextField(
                    decoration: InputDecoration(
                  hintText: "Email(user@example.com)",
                  prefixIcon: Icon(Icons.email, color: Colors.grey),
                  filled: true,
                )),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon:
                          Icon(Icons.visibility_off, color: Colors.grey),
                      filled: true,
                    )),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                MaterialButton(
                  child:
                Text("Sign In"),

                
              color:  Colors.green, 
              
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        userEmail: emailController.text,
                        userPassword: passwordController.text,
                      ),
                    ),
                  );
                  //   // if (_formKey.currentState!.validate()) {
                  //   //   ScaffoldMessenger.of(context).showSnackBar(
                  //   //     const SnackBar(content: Text('Processing Data')
                  //   ),
                  //     );
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) => HomePage(
                  //           userEmail: emailController.text,
                  //           userPassword: passwordController.text,
                  //         )));
                  //   }
                  // },
                })
              ]),
        ))
      ]),
    );
  }
}

// ignore: camel_case_types
// class _formKey {
  // static var currentState;
// }
