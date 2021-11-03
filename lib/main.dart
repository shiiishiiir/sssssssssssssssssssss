import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/HomePage.dart';
import 'package:sssssssssssssssssssss/bottomm.dart';
import 'package:sssssssssssssssssssss/dropsliver.dart';
import 'package:sssssssssssssssssssss/expanded.dart';
import 'package:sssssssssssssssssssss/splashscreen.dart';
import 'package:sssssssssssssssssssss/tabtab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: dropp(),
    );
  }
}

