import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Jsondata extends StatefulWidget {
  const Jsondata({Key? key}) : super(key: key);

  @override
  _JsondataState createState() => _JsondataState();
}

class _JsondataState extends State<Jsondata> {
  late List readyData;
  late List unfiltered;

  Future<String> loadjsondata() async {
    var jsonText = await rootBundle.loadString("assets/data.json");

    setState(() {
      readyData = jsonDecode(jsonText);
    });

    this.unfiltered = readyData;

    return "got the data";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.loadjsondata();
  }

  searchBar(str) {
    var stringExist = str.length > 0 ? true : false;

    if (stringExist) {
      var filtered = [];

      for (int i = 0; i < unfiltered.length; i++) {
        String name = unfiltered[i]["Name"].toUpperCase();
        if (name.contains(str.toUpperCase())) {
          filtered.add(unfiltered[i]);
        }
        setState(() {
          this.readyData = filtered;
        });
      }
    } else {
      setState(() {
        this.readyData = unfiltered;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contact List"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search Contact",
                icon: Icon(Icons.search),
              ),
              onChanged: (str) {
                searchBar(str);
              },
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: readyData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            child: Text(readyData[index]["Name"][0]),
                          ),
                          title: Text(readyData[index]["Name"]),
                          subtitle: Text(readyData[index]["Phone"]),
                          onTap: () {},
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
