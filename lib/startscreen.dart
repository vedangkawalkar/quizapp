import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startscreen extends StatelessWidget{
  const Startscreen(this.startquiz ,{super.key});
  final void Function() startquiz;
  @override
  Widget build(context){
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color:const Color.fromARGB(164, 255, 255, 255),
          ),
      const  SizedBox(height: 80,),
        Text('Learnflutter the fun way!',style:GoogleFonts.lato(
          color: Colors.white,
          fontSize: 24,
        )
        ),
      const  SizedBox(height: 30),
      OutlinedButton.icon(
        onPressed: (){
          startquiz();
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white
          ),
        label: const Text('Start Quiz'),
        icon:const Icon(Icons.arrow_forward),
        )
      ],
    ),
    
    );
  }
}
/*Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  height: 300,
                  color: const Color.fromARGB(162, 255, 255, 255),
                ),
                const SizedBox(height: 80),
                const Text(
                  'Learn Flutter the fun way',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 80),
                OutlinedButton.icon(
                    onPressed: () {
                      activescreen=const Questions();
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    icon: const Icon(Icons.keyboard_double_arrow_right),
                    label: const Text('start qiuz')),
              ]),
            )*/