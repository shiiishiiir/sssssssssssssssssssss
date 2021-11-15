import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class customAlertDialogue extends StatefulWidget {
  const customAlertDialogue({Key? key}) : super(key: key);

  @override
  customAlertDialogueState createState() => customAlertDialogueState();
}

class customAlertDialogueState extends State<customAlertDialogue> {
  bool _value = false;
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
                                    Text(_value == false
                                        ? "Unchecked"
                                        : "Checked"),
                                    Checkbox(
                                        value: _value,
                                        onChanged: (val) {
                                          setState(() {
                                            _value = val!;
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

class chkchk extends StatefulWidget {
  const chkchk({Key? key}) : super(key: key);

  @override
  _chkchkState createState() => _chkchkState();
}

class _chkchkState extends State<chkchk> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(_value == false ? "Unchecked" : "Checked"),
            Checkbox(
                value: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val!;
                    print(_value);
                  });
                }),
            Divider(),
            Dismissible(
              background: Container(
                color: Colors.redAccent,
                child: Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                color: Colors.cyanAccent,
                child: Icon(Icons.add),
              ),
              key: ValueKey("value"),
              child: addDetails("Shokhina", "Kemon aso go?"),
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
    tileColor: Colors.greenAccent,
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(Icons.message),
    ),
  );
}

class dismiss extends StatefulWidget {
  const dismiss({Key? key}) : super(key: key);

  @override
  _dismissState createState() => _dismissState();
}

class _dismissState extends State<dismiss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          background: Container(
            color: Colors.redAccent,
            child: Icon(Icons.delete),
          ),
          secondaryBackground: Container(
            color: Colors.cyanAccent,
            child: Icon(Icons.add),
          ),
          key: ValueKey("value"),
          child: addDetails("Shokhina", "Kemon aso go?"),
        ),
      ),
    );
  }
}

class aniima extends StatefulWidget {
  const aniima({Key? key}) : super(key: key);

  @override
  _aniimaState createState() => _aniimaState();
}

class _aniimaState extends State<aniima> {
  bool check = true;
  bool _value= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: AnimatedCrossFade(
              firstChild: Container(
                height: 200,
                width: 200,
                color: Colors.green,
                child: Center(
                  child: RaisedButton(onPressed: () {
                    setState(() {
                      check = false;
                    });
                  }),
                ),
              ),
              secondChild: Stack(
                alignment: Alignment.center,
                children:[
                  Container(
                    height: 200,
                  width: 350,
                  color: Colors.green,),
                  Positioned(

                    child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                  ),
                  ),],
              ),
              crossFadeState:
                  check ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
          ),
          Divider(),
          Container(
            height: 200,
            width: 300,
            color: _value==false? Colors.greenAccent : Colors.pinkAccent,
            child: Switch(
              value: _value,
              onChanged: (val){
                setState(() {
                  _value=val;
                  print(_value);
                });
              },
            ),
          ),
          Divider(),
          ExpansionTile(
            backgroundColor: Colors.cyanAccent,
            title: Text("M Rahman Shishir"),
            subtitle: Text("01914106262"),
            leading: Icon(Icons.people),
            trailing: Icon(Icons.more),
            children:[
              Container(
                height: 100,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_call),),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.message),),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.photo),),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add),),
                  ],
                ),
              )
            ] ,
          ),
        ],
      ),
    );
  }
}
