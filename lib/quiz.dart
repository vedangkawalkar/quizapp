import 'package:flutter/material.dart';
import 'package:quizhpage/questionsscreen.dart';
import 'package:quizhpage/startscreen.dart';
import 'package:quizhpage/data/questions.dart';
import 'package:quizhpage/resultscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activescreen;
  var activeScreen = 'startscreen';
  List<String> selectedans = [];

  // @override
  // void initState(){
  //   activescreen=Startscreen(switchscreen);
  //   super.initState();
  // }

  void switchscreen() {
    setState(() {
      activeScreen = 'Questions';
    });
  }

  void chooseans(String answer) {
    selectedans.add(answer);

    if (selectedans.length == questions.length) {
      setState(() {
        activeScreen = 'resultscreen';
      });
    }
  }

  void restartquiz(){
    setState(() {
      selectedans=[];
      activeScreen='Questions';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = Startscreen(switchscreen);

    if (activeScreen == 'Questions') {
      screenwidget = Questions(onselectans: chooseans);
    }

    if (activeScreen == 'resultscreen') {
      screenwidget = Resultscreen(
        chosenans: selectedans,
        onPressed:restartquiz,
      );
    }

    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 123, 16, 237),
          Color.fromARGB(255, 123, 16, 237),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: screenwidget,
      ),
    ));
  }
}
