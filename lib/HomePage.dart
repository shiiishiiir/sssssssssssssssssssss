import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sssssssssssssssssssss/baal.dart';
import 'package:sssssssssssssssssssss/second%20page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count=0;
  final GlobalKey<ScaffoldState> _scaffoldKey= GlobalKey<ScaffoldState>();

  _showSnackbar(){
    var _mySnackbar= SnackBar(content: Text("SnackBar"));
    _scaffoldKey.currentState!.showSnackBar(_mySnackbar);
  }

  _showToast(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DhonerMatha()));
            },
            child: Text("Submit"),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BalerMatha()));
              },
              child: Icon(Icons.add_a_photo)),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DhonerMatha()));
            },
            child: Text("dude"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("sona")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "your name",
                labelText: "Name",
                labelStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
                fillColor: Colors.teal,
                filled: true,
              ),
              keyboardType: TextInputType.number,
              // obscureText: true,
              maxLength: 160,
              maxLines: 3,
            ),
          ),
          ElevatedButton(onPressed: () {
            _showSnackbar();
          }, child: Text("snackbar")),
          ElevatedButton(onPressed: () {
            _showToast();
          }, child: Text("show toast")),
        ],
      ),
    );
  }
}
