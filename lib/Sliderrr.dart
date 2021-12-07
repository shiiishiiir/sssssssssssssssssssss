import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class sliderrr extends StatefulWidget {
  const sliderrr({Key? key}) : super(key: key);

  @override
  _sliderrrState createState() => _sliderrrState();
}

class _sliderrrState extends State<sliderrr> {
  var images = [
    "assets/cp.png", "assets/fp.jpg", "assets/lm.jpg", "assets/pp.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 300,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(i),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}





class sliddeerrrrrr extends StatefulWidget {
  const sliddeerrrrrr({Key? key}) : super(key: key);

  @override
  _sliddeerrrrrrState createState() => _sliddeerrrrrrState();
}

class _sliddeerrrrrrState extends State<sliddeerrrrrr> {

  var _value = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text("Ki obostha", style: TextStyle(fontSize: _value),),
            Slider(
                min: 20,
                max: 50,
                value: _value, onChanged: (value){
                  setState(() {
                    _value= value;
                  });
            }),
          ],
        ),
      ),
    );
  }
}

