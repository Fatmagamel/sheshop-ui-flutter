
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';


class introScreen extends StatelessWidget {
  introScreen({super.key, required String title});
  final List<PageViewModel> pages = [
    PageViewModel(
        title: "hello",
        body: "our application special to you ",
        footer: ElevatedButton(
          onPressed: () {},
          child: const Text("let's Go"),
        ),
        image: Center(
          child: Image.asset("assests/1.png"),
        ),
        decoration: PageDecoration(
            titleTextStyle:
            TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
    PageViewModel(
        title: "smile",
        body: "make you happy by shopping",
        footer: ElevatedButton(
          onPressed: () {},
          child: const Text("let's Go"),
        ),
        image: Center(
          child: Image.asset("assests/2.jpg"),
        ),
        decoration: PageDecoration(
            titleTextStyle:
            TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
    PageViewModel(
        title: "scroll",
        body: "explore newest ",
        footer: ElevatedButton
          (

          onPressed: () {},
          child: const Text("let's Go"),

        ),
        image: Center(
          child: Image.asset("assests/3.png"),
        ),
        decoration: PageDecoration(
            titleTextStyle:
            TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
  ];

  static var screenRoute;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Onboarding"),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.symmetric(vertical: 24.0),
     child:  IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 10),
          color: Colors.blue,
          activeSize: Size.square(20),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done: const Text(
          "Done",
          style: TextStyle(fontSize: 20),
        ),
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(fontSize: 20),
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(context),
       curve: Curves.bounceOut,
      ),
    ),
    );
  }

  void onDone(context) async{
    final prefs =await SharedPreferences.getInstance();
    await prefs.setBool("ON_BOARDING",false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}