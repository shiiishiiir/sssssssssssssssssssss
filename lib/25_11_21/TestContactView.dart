import 'package:flutter/material.dart';

class TestContactView extends StatefulWidget {

  var readyList, picList;

  TestContactView(this.readyList,this.picList);

  @override
  _TestContactViewState createState() => _TestContactViewState(this.readyList,this.picList);
}

class _TestContactViewState extends State<TestContactView> {

  var useList, photos;
  _TestContactViewState(this.useList, this.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(photos),fit: BoxFit.cover,
                ),
              ),
            ),
            Text("It's ${useList["Name"]}", style: TextStyle(fontSize: 50),),
            Text("Phone: ${useList["Phone"]}", style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
