import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/HomePage.dart';

class BalerMatha extends StatefulWidget {
  const BalerMatha({Key? key}) : super(key: key);

  @override
  _BalerMathaState createState() => _BalerMathaState();
}

class _BalerMathaState extends State<BalerMatha> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("baaaaal"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("baaal"),
                Text("data"),
                Text("data"),
                Text("baaal"),
                Text("data"),
                Text("data"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("baaal"),
                Text("data"),
                Text("data"),
                Text("baaal"),
                Text("data"),
                Text("data"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("baaal"),
                Text("data"),
                Text("data"),
                Text("baaal"),
                Text("data"),
                Text("data"),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Button")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
