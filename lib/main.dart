import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jea_1/telegram.dart';
// import 'package:jea_1/home_page.dart';
// import 'package:jea_1/account.dart';
// import 'package:jea_1/mpm.dart';
// import 'package:jea_1/telegram.dart';
// import 'package:jea_1/theme_switch.dart';

// import 'fill_form.dart';
// import 'package:jea_1/sign_in.dart';
// import 'package:jea_1/validation_form.dart';
// import 'package:jea_1/fill_form.dart';

void main() {
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Gram(),
      // home:M(),
      // home:HomePage()
      // home: FirstPage(),
      // home:Profile()
      // home:MyCustomForm()
      // home:SignInForm()
      // home: SignInApp(),
      // home:SignInPage(),
      
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: Colors.white),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),elevation: 0
        ),
        hintColor: Color(0xffffffff),
        scaffoldBackgroundColor: Color(0xFF097E60),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor:Color(0xFF72726D) ),textTheme: Typography.whiteRedmond
      ),



      darkTheme:ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black12,
        titleTextStyle: TextStyle(color: Colors.white),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),elevation: 0
        ),
        
        hintColor: Color(0xffffffff),
        scaffoldBackgroundColor: Color(0xff000000),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor:Color(0xFF72726D) ),
          textTheme: Typography.whiteMountainView,


    

      ),
    themeMode: ThemeMode.light,
      

    ),
    
  );
}

