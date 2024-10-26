import 'package:carbo2/core/routes.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final List<List<String>> questions = [
    [
      '1: How often do you buy new clothes?',
      "Weekly",
      "Monthly",
      "Once in 3 Months",
      "Twice a Year",
    ],
    [
      '2: Do you buy or use second-hand or thrifted clothes?',
      "Frequently",
      "Occasionally",
      "Never",
    ],
    [
      '3: What’s your clothing preference?',
      "Mostly Fast Fashion (e.g., fast trends, cheap brands)",
      "3-5 times a week",
      "A Mix of Fast Fashion and Sustainable Brands",
      "I prefer sustainable brands or slow fashion.",
    ],
  ];

  List<int?> selectedAnswers = [null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              for (int i = 0; i < questions.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      questions[i][0],
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ...questions[i].sublist(1).asMap().entries.map((entry) {
                      int index = entry.key;
                      String answer = entry.value;
                      return RadioListTile<int>(
                        title: Text(answer),
                        value: index,
                        groupValue: selectedAnswers[i],
                        onChanged: (int? value) {
                          setState(() {
                            selectedAnswers[i] = value;
                          });
                        },
                      );
                    }).toList(),
                    const SizedBox(height: 20),
                  ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(OneRoute.transaction);
        },
        child: const Text('Submit'),
      ),
    );
  }
}

// Widget answerText() {
//   retur
// }
