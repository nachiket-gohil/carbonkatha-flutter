import 'package:carbo2/config/routes.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final List<List<String>> questions = [
    ['1: What is the capital of France?', "Weekly", "Monthly", "Once in 3 Months", "Twice a Year"],
    ['2: What is 2 + 2?', "Frequently", "Occasionally", "Never"],
    [
      '3: What is the color of the sky?',
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
              SizedBox(height: 60),
              for (int i = 0; i < questions.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      questions[i][0],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                    SizedBox(height: 20),
                  ],
                ),
              ElevatedButton(
                onPressed: () {
                  String results = '';
                  for (int i = 0; i < questions.length; i++) {
                    if (selectedAnswers[i] != null) {
                      results += 'Q${i + 1}: ${questions[i][selectedAnswers[i]! + 1]}\n';
                    }
                  }
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Selected Answers'),
                      content: Text(results.isNotEmpty ? results : 'No answers selected.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(OneRoute.main_screen);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget answerText() {
//   retur
// }
