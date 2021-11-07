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




class sliverrrr extends StatefulWidget {
  const sliverrrr({Key? key}) : super(key: key);

  @override
  _sliverrrrState createState() => _sliverrrrState();
}

class _sliverrrrState extends State<sliverrrr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.cyan,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Sliver App Bar fixed"),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  addDetails("name", "description"),
                  addDetails("one", "description"),
                  addDetails("two", "description"),
                  addDetails("three", "description"),
                  addDetails("four", "description"),
                  addDetails("five", "description"),
                  addDetails("six", "description"),
                  addDetails("seven", "description"),
                  addDetails("eight", "description"),
                  addDetails("nine", "description"),
                  addDetails("ten", "description"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget addDetails(
    String name,
    String description,
    ) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}

