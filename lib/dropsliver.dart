import 'package:flutter/material.dart';

class dropp extends StatefulWidget {
  const dropp({Key? key}) : super(key: key);

  @override
  State<dropp> createState() => _droppState();
}

class _droppState extends State<dropp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              DropdownButtonFormField(
                hint: Text("Gender"),
                items: [
                  DropdownMenuItem(
                    child: Text("Male"),
                    value: "test11",
                  ),
                  DropdownMenuItem(
                    child: Text("Female"),
                    value: "test22",
                  ),
                  DropdownMenuItem(
                    child: Text("Shemale"),
                    value: "test32",
                  ),
                ],
                onChanged: (val) {
                  setState(() {
                    print(val);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class bottomsheett extends StatelessWidget {
  const bottomsheett({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: RaisedButton(
            child: Text("Watch Below"),
              onPressed: () {
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
          },
          ),
        ),
      ),
    );
  }
}
