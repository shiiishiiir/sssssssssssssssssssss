import 'dart:io';
import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sssssssssssssssssssss/HomePage.dart';
import 'package:sssssssssssssssssssss/second%20page.dart';
import 'package:sssssssssssssssssssss/tabtab.dart';
import 'package:sssssssssssssssssssss/textfield.dart';

class animatContain extends StatefulWidget {
  const animatContain({Key? key}) : super(key: key);

  @override
  _animatContainState createState() => _animatContainState();
}

class _animatContainState extends State<animatContain> {

  // late File _image;
  // Future CameraImage() async{
  //   var image = await ImagePicker.pickImage(source: ImageSource.camera);
  //   setState(() {
  //     _image= image;
  //   });
  // }


  bool _value = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            tooltip: "Animated Container",
            onPressed: () {
              setState(() {
                _value = !_value;
              });
            }),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Tooltip(
                  message: "Tooltip Container",
                  child: AnimatedContainer(
                    height: _value == false ? 150 : 300,
                    width: _value == false ? 150 : 200,
                    color: Colors.tealAccent,
                    duration: Duration(seconds: 3),
                  ),
                ),
                Divider(),
                Transform.rotate(angle: pi/4.2 ,child: Container(width: 150,height: 150,color: Colors.redAccent,),),
                Divider(),
                Transform.scale(scale:1.55 ,child: Container(width: 150,height: 150,color: Colors.cyanAccent,),),
                Divider(),
                Transform.translate(offset: Offset(50, 50) ,child: Container(width: 150,height: 150,color: Colors.redAccent,),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





class blurrrr extends StatefulWidget {
  const blurrrr({Key? key}) : super(key: key);

  @override
  _blurrrrState createState() => _blurrrrState();
}

class _blurrrrState extends State<blurrrr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              width: 200,
              color: Colors.greenAccent,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 1, sigmaY: 1, tileMode: TileMode.clamp),
              child: Container(
                color: Colors.red.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class animaBottom extends StatefulWidget {
  const animaBottom({Key? key}) : super(key: key);

  @override
  _animaBottomState createState() => _animaBottomState();
}

class _animaBottomState extends State<animaBottom> {
  var _currentIndex = 0;
  final pages= [

    animatContain(),
    HomePage(),
    textfield(),
    tabtab(),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: _currentIndex,
            color: Colors.pinkAccent,
            buttonBackgroundColor: Colors.tealAccent,
            backgroundColor: Colors.white,
            animationCurve: Curves.bounceOut,
            animationDuration: Duration(milliseconds: 700),
            height: 60,
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              Icon(Icons.people),
              Icon(Icons.accessible),
              Icon(Icons.add_call),
              Icon(Icons.favorite),
            ]),
        body: pages[_currentIndex],
      ),
    );
  }
}

