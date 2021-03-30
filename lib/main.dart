import 'package:flutter/material.dart';
import 'package:screen_login/screens/first_screen.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstScreen(),
    );
  }
}
