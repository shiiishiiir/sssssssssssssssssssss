import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "HOmePage",
        style: TextStyle(fontSize: 20),
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What do people call you?',
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: 'Give your password here',
                  labelText: 'password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                  child: Text(
                    "Login Here",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.green,
                  onPressed: () {}),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://picsum.photos/250?image=9'),
                ),
              ),
              Text("I am here"),
              SizedBox(
                width: 10,
              ),
              Image.network('https://picsum.photos/250?image=9'),
              Image.network('https://picsum.photos/250?image=9'),
              Text("I am here"),
              Image.network('https://picsum.photos/250?image=9'),
            ],
          ),
        ),
      ),
    );
  }
}
