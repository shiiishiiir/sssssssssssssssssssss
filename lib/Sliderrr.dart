import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class sliderrr extends StatefulWidget {
  const sliderrr({Key? key}) : super(key: key);

  @override
  _sliderrrState createState() => _sliderrrState();
}

class _sliderrrState extends State<sliderrr> {
  var images = [
    "https://www.xda-developers.com/files/2018/02/Flutter-Framework-Feature-Image-Background-Colour-810x298_c.png",
    "https://flutter.dev/assets/images/showcase/cards/bmw-top-1200.jpg",
    "https://flutter.dev/assets/images/showcase/cards/nubank-top-600.jpg"
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
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items: images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        ),
                    child: Image.network(i),
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
