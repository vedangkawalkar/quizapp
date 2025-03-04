import 'package:flutter/material.dart';

class Quessummary extends StatelessWidget {
  const Quessummary(this.summarydata, {super.key});
  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map(
            (data) {
              return Row(
                children: [
                Text(((data['questionindex'] as int) + 1).toString()),
                Expanded(
                  child: Column(children: [
                    Text(data['question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['userans'] as String),
                    Text(data['correctans'] as String),
                  ]),
                ),
              ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
