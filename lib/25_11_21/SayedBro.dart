import 'dart:ui';

import 'package:flutter/material.dart';

class sayed extends StatefulWidget {
  const sayed({Key? key}) : super(key: key);

  @override
  _sayedState createState() => _sayedState();
}

class _sayedState extends State<sayed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:
      AppBar(title: Text("Click"),
      backgroundColor: Colors.grey,
      centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: 
      SingleChildScrollView(
        child: Column(
         children: <Widget> [
           SizedBox(height: 10,),
           Center(
             child: Container(
               height: 200,
               width: 300,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(30),
                       topLeft: Radius.circular(30),
                       bottomRight: Radius.circular(30),
                       topRight: Radius.circular(30)
                   ),
                 color: Colors.black,
               ),
               // color: Colors.black,
               child: Stack(
                 children: <Widget> [
                   /*Column(
                     children: [

                     ],
                   ),*/
                   Center(child: Image.asset("assets/cp.png",height: 300,)),
                   Positioned(
                     left: 50,
                     child: Text("Ekhanei shop",style: TextStyle(fontSize: 30,color: Colors.red),),),


                   //Positioned(child: )
                 ],

               ),
             ),
           ),

         ],
        ),
        /*
        Stack(
          children: [
            Container(

              color: Colors.white,
              child: Image.asset("assets/cp.png"),
              width: 400,
              height: 400,
              //decoration: ,
            ),

            SizedBox(height: 50,),
            Positioned(
              top: 40,
              child: TextButton(onPressed:(){
            }, child: Text("Icon Bottom")),),
            SizedBox(height: 10,),

            /*Center(
              child: Container(
                color: Colors.teal,
                height: 300,
                width: 300,
                //decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(0),

                //),
                child: Center(child: Text("evbfx")),
            ),
            ),*
          ],


        ),*/
      ),*/
      ),
    );
  }
}
