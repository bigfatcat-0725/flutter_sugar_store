import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sugar/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hello',
      theme: ThemeData(
        fontFamily: 'RalewayRegular',
        primarySwatch: Colors.pink,
      ),
      home: Splash(),
    );
  }
}
