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
      title: 'Sugar Rush Store',
      theme: ThemeData(
        fontFamily: 'RalewayRegular',
        primarySwatch: Colors.pink,
      ),
      home: Splash(),
    );
  }
}
