import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  const Answerbutton({super.key, required this.answertext, required this.onTap});

  final String answertext;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 40),backgroundColor:const Color.fromARGB(249, 42, 4, 74),foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child:Text(answertext,textAlign: TextAlign.center,),
    );
  }
}
