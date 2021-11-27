import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dk extends StatefulWidget {
  const dk({Key? key}) : super(key: key);

  @override
  _dkState createState() => _dkState();
}

class _dkState extends State<dk> {


  final List<String> _items = [
    'assets/cp.png',
    'assets/pp.jpg',
    'assets/cp.png',
    'assets/pp.jpg',
    'assets/cp.png',
    'assets/pp.jpg',
    'assets/cp.png',
    'assets/pp.jpg',
    'assets/cp.png',
    'assets/pp.jpg',
    'assets/cp.png',
    'assets/pp.jpg',
    'assets/cp.png',
    'assets/pp.jpg',
    'assets/cp.png',
    'assets/pp.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 5,
          leading: Icon(Icons.account_balance_sharp),
          title: Text("Click"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/cp.png"),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.purple,
                        Colors.black.withOpacity(0.6),
                      ], begin: Alignment.bottomRight),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Ekhoni shop",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.cyan),
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Center(
                              child: Text(
                                "Click here",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    children: _items.map((item) => Card(
                      color: Colors.tealAccent,
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.cover),
                        ),
                        child: Transform.translate(
                          offset: Offset(40, -70),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 100, vertical: 100),
                            child: Icon(Icons.add_circle_rounded),
                          ),
                        ),
                      ),
                    )).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
