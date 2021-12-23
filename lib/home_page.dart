import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);
  HomePage({this.userEmail, this.userPassword});
  final String? userEmail;
  final String? userPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green, title: Center(child: Text("Welcome To My Home"))),
        body:CardListViewBuilder()
        );
  }
}

class CardListViewBuilder extends StatelessWidget {
  const CardListViewBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:1000,
      itemBuilder: (context,index){
return Card(
  child: ListTile(
    leading: CircleAvatar(radius: 30,),
    title: Text("User Name"),
    subtitle: Text("Message"),
    trailing:Text("12:30 pm")
  ),

);
      },
      // ignore: dead_code
      );
  }
}