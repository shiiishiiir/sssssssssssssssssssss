import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/21_11_2021.dart';
import 'package:sssssssssssssssssssss/25_11_21/ContactListArray.dart';
import 'package:sssssssssssssssssssss/25_11_21/Expandableess.dart';
import 'package:sssssssssssssssssssss/25_11_21/RegForm.dart';
import 'package:sssssssssssssssssssss/25_11_21/dd.dart';
import 'package:sssssssssssssssssssss/HomePage.dart';
import 'package:sssssssssssssssssssss/Sliderrr.dart';
import 'package:sssssssssssssssssssss/animatedContainer.dart';
import 'package:sssssssssssssssssssss/bottomm.dart';
import 'package:sssssssssssssssssssss/dropsliver.dart';
import 'package:sssssssssssssssssssss/expanded.dart';
import 'package:sssssssssssssssssssss/splashscreen.dart';
import 'package:sssssssssssssssssssss/tabtab.dart';
import 'package:sssssssssssssssssssss/littleAnimatedWidgets.dart';
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
      home: ContactListArray(),
    );
  }
}

