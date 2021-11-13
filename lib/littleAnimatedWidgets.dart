import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class customAlertDialogue extends StatefulWidget {
  const customAlertDialogue({Key? key}) : super(key: key);

  @override
  customAlertDialogueState createState() => customAlertDialogueState();
}

class customAlertDialogueState extends State<customAlertDialogue> {
  bool _value= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            RaisedButton(onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Stack(
                          alignment: Alignment.topCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 250,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Warning"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "rich text test ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.cyan),
                                        children: [
                                          TextSpan(
                                            text: "Second rich text test",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 30,
                                      child: GestureDetector(
                                        child: Hero(
                                          tag: "tag",
                                          child: Icon(
                                            Icons.home,
                                            size: 20,
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Seconddd()));
                                        },
                                      ),
                                    ),
                                    Text(_value==false? "Unchecked": "Checked"),
                                    Checkbox(value: _value, onChanged: (val){
                                      setState(() {
                                        _value= val!;
                                        print(_value);
                                      });
                                    }),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: -50,
                              child: CircleAvatar(
                                radius: 50,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  child: Image.asset("assets/pp.jpg"),
                                ),
                              ),
                            ),
                          ]),
                    );
                  });
            }),
          ],
        ),
      ),
    );
  }
}

class Seconddd extends StatelessWidget {
  const Seconddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          color: Colors.cyan,
          child: Hero(
            tag: "tag",
            child: Icon(
              Icons.message,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
