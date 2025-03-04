import 'package:flutter/material.dart';
import 'package:quizhpage/data/questions.dart';
import 'package:quizhpage/quessummaru.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({
    super.key,
    required this.chosenans,required this.onPressed
  });

  final List<String> chosenans;
  final void Function() onPressed;
  
  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenans.length; i++) {
      summary.add({
        'questionindex': i,
        'question': questions[i].text,
        'correctans': questions[i].answers[0],
        'userans': chosenans[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getsummarydata();
    final numtotalques = questions.length;

    final numcorrectques = summarydata.where((data) {
      return data['userans'] == data['correctans'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'You answered $numcorrectques out of $numtotalques values correctly',
                ),
                const SizedBox(
                  height: 30,
                ),
                Quessummary(summarydata),
                const SizedBox(
                  height: 30,
                ),
                TextButton(onPressed:onPressed, child: const Text('Restart quiz'))
              ],
            )));
  }
}
