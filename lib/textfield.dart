import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({Key? key}) : super(key: key);

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "name",
              labelText: "Enter Your Name",
              labelStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
              border:
                  OutlineInputBorder(), //InputBorder.none, UnderlineInputBorder(),
              fillColor: Colors.tealAccent,
              filled: true,

              icon: Icon(Icons.free_breakfast),
              prefixIcon: Icon(Icons.free_breakfast),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _secureText = !_secureText;
                    });
                  },
                  icon: Icon(_secureText
                      ? Icons.remove_red_eye
                      : Icons.free_breakfast),
              ),
              

            ),
            keyboardType: TextInputType.text,
            obscureText: _secureText,
            maxLength: 168,
            // maxLines: 3,
          ),
        ],
      ),
    );
  }
}
