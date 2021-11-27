import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/25_11_21/Contactview.dart';
import 'package:sssssssssssssssssssss/25_11_21/TestContactView.dart';

class ContactListArray extends StatefulWidget {
  const ContactListArray({Key? key}) : super(key: key);

  @override
  _ContactListArrayState createState() => _ContactListArrayState();
}

class _ContactListArrayState extends State<ContactListArray> {
  final List peopleList = [
    {"Name": "Shishir", "Phone": "01914106262"},
    {"Name": "Dew", "Phone": "01234568985"},
    {"Name": "Daniel", "Phone": "02589314758"},
    {"Name": "Farhan", "Phone": "85203146978"},
    {"Name": "Sadik", "Phone": "96320145879"},
    {"Name": "Galib", "Phone": "12365478903"},
    {"Name": "Mehedi", "Phone": "456123078945"},
    {"Name": "DDS", "Phone": "74102589630"},
    {"Name": "Shishir", "Phone": "01914106262"},
    {"Name": "Shishir", "Phone": "01914106262"},
  ];

  final List<String> _pictures = [
    'assets/cp.png',
    'assets/pp.png',
    'assets/lm.jpg',
    'assets/fp.jpg',
    'assets/pp.png',
    'assets/lm.jpg',
    'assets/fp.jpg',
    'assets/pp.png',
    'assets/lm.jpg',
    'assets/fp.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contact List"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: peopleList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  // ListTile(
                  //   leading: CircleAvatar(
                  //     child: Text(peopleList[index]["Name"][0]),
                  //   ),
                  //   title: Text(peopleList[index]["Name"]),
                  //   subtitle: Text(peopleList[index]["Phone"]),
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) =>
                  //                 ContactView(useList: peopleList[index])));
                  //   },
                  // ),

                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(_pictures[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(peopleList[index]["Name"]),
                    subtitle: Text(peopleList[index]["Phone"]),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TestContactView(
                                  peopleList[index], _pictures[index])));
                    },
                  ),
                ],
              );
            }),
      ),
    );
  }
}
