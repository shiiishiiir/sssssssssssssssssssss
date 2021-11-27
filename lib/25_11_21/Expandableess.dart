import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:url_launcher/url_launcher.dart';


class Expandableess extends StatefulWidget {
  const Expandableess({Key? key}) : super(key: key);

  @override
  _ExpandableessState createState() => _ExpandableessState();
}

class _ExpandableessState extends State<Expandableess> {
  bool checkboxSelected = false;
  bool switchSelected = false;
  bool radioSelected = false;
  bool iconSelected = false;

  double sliderValue = 0;

  static const url="www.facebook.com";
  // const String url = 'https://flutter.dev';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expandable(
                  primaryWidget: Container(
                    height: 30,
                    child: Center(child: Text('Hello world!')),
                  ),
                  secondaryWidget: Container(
                    height: 45,
                    child: Center(
                      child: Column(
                        children: [
                          Text('Hello'),
                          Text('World!'),
                        ],
                      ),
                    ),
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  showArrowIcon: true,
                  centralizePrimaryWidget: true,
                  isClickable: true,
                  padding: EdgeInsets.all(5.0),
                ),
                Expandable.extended(
                  elevation: 10,
                  isClickable: true,
                  initiallyExpanded: true,
                  centralizePrimaryWidget: true,
                  centralizeAdditionalWidget: true,
                  primaryWidget: Container(
                    height: 30,
                    child: Center(child: Text('Important Summary')),
                  ),
                  secondaryWidget: Container(
                    height: 70,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('More'),
                          Text('Details'),
                          Text('About'),
                          Text('Something'),
                        ],
                      ),
                    ),
                  ),
                  arrowWidget: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: Colors.blueGrey,
                    size: 20.0,
                  ),
                  additionalWidget: Text('Show me'),
                  arrowLocation: ArrowLocation.left,
                ),
                GlowButton(child: Text("Glowing Button"), onPressed: () {launch("tel:01914106262");}),
                SizedBox(height: 32),
                GlowButton(
                  onPressed: () {
                    launch(url);
                  },
                  color: Colors.indigo,
                  child: Text('Glow'),
                ),
                SizedBox(height: 32),
                GlowCheckbox(
                  value: checkboxSelected,
                  enable: true,
                  color: Colors.indigo,
                  onChange: (bool value) {
                    setState(() {
                      checkboxSelected = !checkboxSelected;
                    });
                  },
                ),
                SizedBox(height: 32),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      iconSelected = !iconSelected;
                    });
                  },
                  child: GlowIcon(
                    iconSelected ? Icons.wb_cloudy : Icons.cloud_queue,
                    color: Colors.indigo,
                    glowColor: iconSelected ? Colors.indigo : Colors.transparent,
                    size: 64,
                    blurRadius: 9,
                  ),
                ),
                SizedBox(height: 32),
                GlowText(
                  'Glow Text',
                  style: TextStyle(fontSize: 40, color: Colors.indigo),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GlowRadio<bool>(
                      value: true,
                      groupValue: radioSelected,
                      color: Colors.indigo,
                      onChange: (value) {
                        setState(() {
                          radioSelected = value;
                          log(value.toString());
                        });
                      },
                    ),
                    SizedBox(width: 32),
                    GlowRadio<bool>(
                      value: false,
                      color: Colors.indigo,
                      groupValue: radioSelected,
                      onChange: (value) {
                        setState(() {
                          radioSelected = value;
                          log(value.toString());
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 32),
                GlowSwitch(
                  onChanged: (value) {
                    setState(() {
                      switchSelected = value;
                    });
                  },
                  value: switchSelected,
                  activeColor: Colors.indigo.withOpacity(0.6),
                  blurRadius: 4,
                ),
                SizedBox(height: 32),
                GlowLineProgress(
                  blurRadius: 12,
                  glowColor: Colors.indigo,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
