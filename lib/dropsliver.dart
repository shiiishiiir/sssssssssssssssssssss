import 'package:flutter/material.dart';

class dropp extends StatefulWidget {
  const dropp({Key? key}) : super(key: key);

  @override
  State<dropp> createState() => _droppState();
}

class _droppState extends State<dropp> {
  var selected = "choose";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButtonFormField(
            items: [
              DropdownMenuItem(
                child: Text("test1"),
                value: "test11",
              ),
              DropdownMenuItem(
                child: Text("test2"),
                value: "test22",
              ),
            ],
            onChanged: (val) {
              setState(() {
              });
            },
            hint: Text("Texttt"),
          ),
        ],
      ),
    );
  }
}

class bottomsheett extends StatelessWidget {
  const bottomsheett({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 200,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("1"),
                    ),
                    ListTile(
                      title: Text("1"),
                    ),
                    ListTile(
                      title: Text("1"),
                    ),
                  ],
                ),
              );
            },
        );
      }),
    );
  }
}
