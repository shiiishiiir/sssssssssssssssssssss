import 'package:flutter/material.dart';

class ContactView extends StatefulWidget {
   // const ContactView({Key? key}) : super(key: key);

  var useList;
  ContactView({required this.useList});

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Details"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text("${widget.useList["Name"]}", style: TextStyle(fontSize: 50),),
            Text("Phone: ${widget.useList["Phone"]}", style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
