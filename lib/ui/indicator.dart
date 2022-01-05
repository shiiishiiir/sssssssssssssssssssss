import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sssssssssssssssssssss/25_11_21/RegForm.dart';
import 'package:sssssssssssssssssssss/ui/image%20picker.dart';

class adScreen extends StatefulWidget {
  const adScreen({Key? key}) : super(key: key);

  @override
  _adScreenState createState() => _adScreenState();
}

class _adScreenState extends State<adScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "One",
          body: "This is First page",
          image: Image.asset("assets/pp.jpg", width: 350),
        ),
        PageViewModel(
          title: "Two",
          body: "This is Two page",
          image: Image.asset("assets/cp.png", width: 350),
        ),
        PageViewModel(
          title: "Three",
          body: "This is Three page",
          image: Image.asset("assets/fp.jpg", width: 350),
        ),

      ],
      onDone: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ImagePick()));
      },
      done: Text("Done"),
      skip: Text("Skip"),
      showSkipButton: true,
      showNextButton: true,
      next: Text("Next"),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
