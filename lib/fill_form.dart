import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'home_page.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          // color: Colors.deepOrange,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/04/15/16/54/castle-fontainebleau-3322089__340.jpg")),
          ),
        ),
        Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
                padding: EdgeInsets.all(10),
                // padding:EdgeInsets.symmetric(vertical: 10)
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // ignore: prefer_const_constructors
                      Align(
                        child: Text(
                          "Let's create a new",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Align(
                        child: Text(
                          "account",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: Color(0xffDAD5D5),
                          hintText: "E-mail",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter sometext';
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: Color(0xffDAD5D5),
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      MaterialButton(
                          color: Color(0xffff3b23),
                          child: Text("SignIn"),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            }
                          })
                    ])))
      ],
    ));
  }
}

// ignore: camel_case_types
class _formKey {
  static var currentState;
}
