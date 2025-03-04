import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizhpage/answerbut.dart';
import 'package:quizhpage/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key,required this.onselectans});
  final void Function(String answer) onselectans;
  @override
  State<StatefulWidget> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentquesindex =0;

  void answerquestion(String selectedans){
    //currentquesindex=currentquesindex+1;
    //currentquesindex+=1;
    widget.onselectans(selectedans);
    setState(() {
    currentquesindex++;
    });
    
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentquesindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,style: GoogleFonts.lato(
                color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,
              ),
              // style: const TextStyle(color: Colors.white),
              // textAlign: TextAlign.center,
            ),
            // const Text(
            //   'The Question..',
            //   style: TextStyle(
            //     color: Colors.white,
            //   ),
            // ),
        
            const SizedBox(height: 30),
            ...currentquestion.getShuffeledAnswers().map((item) {
              return Answerbutton(answertext: item, onTap: (){
                answerquestion(item);
              });
            }),
            // Answerbutton(
            //   answertext: currentquestion.answers[0],
            //   onTap: () {},
            // ),
            // Answerbutton(
            //   answertext: currentquestion.answers[1],
            //   onTap: () {},
            // ),
            // Answerbutton(
            //   answertext: currentquestion.answers[2],
            //   onTap: () {},
            // ),
            // Answerbutton(
            //   answertext: currentquestion.answers[3],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
