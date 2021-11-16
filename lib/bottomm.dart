import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/HomePage.dart';
import 'package:sssssssssssssssssssss/second%20page.dart';
import 'package:sssssssssssssssssssss/tabtab.dart';
import 'package:sssssssssssssssssssss/textfield.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class bottomm extends StatefulWidget {
  const bottomm({Key? key}) : super(key: key);

  @override
  _bottommState createState() => _bottommState();
}

class _bottommState extends State<bottomm> {
  var _currentIndex = 0;
  final pages= [
    HomePage(),
    DhonerMatha(),
    textfield(),
    tabtab(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
          backgroundColor: Colors.red,
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pan_tool),
              title: Text("Ask"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications),
              title: Text("Settings"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_outlined),
              title: Text("Books"),
            ),
          ],

        ),
      ),
    );
  }
}
