import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/21_11_2021.dart';
import 'package:sssssssssssssssssssss/25_11_21/ContactListArray.dart';
import 'package:sssssssssssssssssssss/25_11_21/DataFire.dart';
import 'package:sssssssssssssssssssss/25_11_21/Expandableess.dart';
import 'package:sssssssssssssssssssss/25_11_21/GeoLocator.dart';
import 'package:sssssssssssssssssssss/25_11_21/RegForm.dart';
import 'package:sssssssssssssssssssss/25_11_21/dd.dart';
import 'package:sssssssssssssssssssss/API/WeatherApp.dart';
import 'package:sssssssssssssssssssss/Firebase/EmailAuth.dart';
import 'package:sssssssssssssssssssss/Firebase/Screens/GoogleLogInPage.dart';
import 'package:sssssssssssssssssssss/HomePage.dart';
import 'package:sssssssssssssssssssss/JsonDataFetch.dart';
import 'package:sssssssssssssssssssss/Sliderrr.dart';
import 'package:sssssssssssssssssssss/animatedContainer.dart';
import 'package:sssssssssssssssssssss/bottomm.dart';
import 'package:sssssssssssssssssssss/dropsliver.dart';
import 'package:sssssssssssssssssssss/expanded.dart';
import 'package:sssssssssssssssssssss/splashscreen.dart';
import 'package:sssssssssssssssssssss/tabtab.dart';
import 'package:sssssssssssssssssssss/littleAnimatedWidgets.dart';
import 'package:sssssssssssssssssssss/ui/Url%20Launch.dart';
import 'package:sssssssssssssssssssss/ui/indicator.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: SafeArea(
          child: GoogleLoginPage(),
      ),
    );
  }
}

