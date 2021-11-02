import 'package:flutter/material.dart';

class expand extends StatelessWidget {
  const expand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
                child: Container(
                    color: Colors.cyanAccent)),
            Expanded(
              flex: 1,
                child: Container(
                    color: Colors.cyan)),
            Expanded(
              flex: 1,
                child: Container(
                    color: Colors.tealAccent)),
            Expanded(
              flex: 1,
                child: Container(
                    color: Colors.teal)),
            Expanded(
              flex: 1,
                child: Container(
                    color: Colors.blueGrey)),
          ],
        ),
      ),
    );
  }
}

class pagepage extends StatefulWidget {
  const pagepage({Key? key}) : super(key: key);

  @override
  _pagepageState createState() => _pagepageState();
}

class _pagepageState extends State<pagepage> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children:<Widget>[
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
    );
  }
}
class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
    );
  }
}
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
    );
  }
}


