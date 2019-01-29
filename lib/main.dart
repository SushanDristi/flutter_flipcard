import 'package:flutter/material.dart';
import 'package:flutter_flipcard/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Flip',
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
      ),
      home: HomePage(),
    
    );
  }
}