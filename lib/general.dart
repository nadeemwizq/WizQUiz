import 'package:flutter/material.dart';
import 'pass.dart';
import 'fail.dart';

// ignore: must_be_immutable
class GeneralQuiz extends StatefulWidget {
  int Marks;
  GeneralQuiz({required this.Marks});
  @override
  GeneralQuizState createState() => GeneralQuizState();
}

class GeneralQuizState extends State<GeneralQuiz> {
  var Marks = 0;
  List<Question> questions = [
    Question(
      'largest continenet in the world?', // question
      ['Asia', 'Australia', 'Latin america', 'Africa'], // options list
      'Asia', // right answer
    ),
    Question(
      'which is the most populated country?',
      ['Russia', 'India', 'Pakistan', 'China'],
      'India',
    ),
    Question(
      'smallest country in the world?',
      ['Nepal', 'Srilanka', 'Vatican city', 'Bahrain'],
      'Vatican city',
    ),
    Question(
      'capital of india ?',
      ['New delhi', 'Kolkata', 'Mumbai', 'Chennai'],
      'New delhi',
    ),
    Question(
      'smallest state in india?',
      ['Sikkim', 'Mizoram', 'Goa', 'Nagaland'],
      'Goa',
    ),
  ];

  int currentQuestionIndex = 0;
  String? selectedOption;
  bool isCorrect = false;

  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOption = null;
        isCorrect = false;
      });
    } else {
      // Quiz completed
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Quiz Completed'),
          content: Text('You have completed the General quiz!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                if (3 <= Marks) {
                  //  pass page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => pass(Marks: Marks)));
                } else {
                  //  fail page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => fail(Marks: Marks)));
                }
              },
              child: Text('Show result'),
            ),
          ],
        ),
      );
    }
  }

  void evaluateAnswer() {
    if (selectedOption == questions[currentQuestionIndex].correctAnswer) {
      isCorrect = true;
      Marks++; // Increment users marks
    } else {
      isCorrect = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General Quiz'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white, Colors.white],
          ),
        ),
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.fromLTRB(43, 40, 0, 0),
            //       width: 320,
            //       height: 50,
            //       decoration: BoxDecoration(
            //         gradient: const LinearGradient(
            //           begin: Alignment.topRight,
            //           end: Alignment.bottomLeft,
            //           colors: [Colors.white, Colors.white, Colors.black],
            //         ),
            //         borderRadius: BorderRadius.circular(30),
            //         boxShadow: const [
            //           BoxShadow(
            //               offset: Offset(0, 4),
            //               color: Colors.black,
            //               spreadRadius: 0,
            //               blurRadius: 5)
            //         ],
            //       ),
            // child: Row(
            //   children: [
            //     const Padding(padding: EdgeInsets.fromLTRB(20, 48, 0, 0)),
            //     Text(
            //       "Quiz Wizard",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 20,
            //           fontWeight: FontWeight.w600),
            //     ),
            //     const SizedBox(
            //       width: 142,
            //     ),
            //     Image.asset("images/3dp.png"),
            //   ],
            // ),
            //     ),
            //   ],
            // ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 45, 0, 0),
                  child: const Text(
                    "Bruce",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: const Text(
                    "Let's start General quiz",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
            if (currentQuestionIndex < questions.length)
              Column(
                children: [
                  Container(
                    child: Text(
                      'Question ${currentQuestionIndex + 1}/${questions.length}',
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white, Colors.white, Colors.white],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            color: Colors.black,
                            spreadRadius: 0,
                            blurRadius: 5)
                      ],
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      questions[currentQuestionIndex].questionText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  for (int i = 0;
                      i < questions[currentQuestionIndex].options.length;
                      i++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption =
                              questions[currentQuestionIndex].options[i];
                          evaluateAnswer();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.white, Colors.white, Colors.white],
                          ),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 4),
                                color: Colors.black,
                                spreadRadius: 0,
                                blurRadius: 5)
                          ],
                          color: selectedOption ==
                                  questions[currentQuestionIndex].options[i]
                              ? isCorrect
                                  ? Colors.green
                                  : Colors.red[400]
                              : Colors.white,
                        ),
                        child: Text(
                          questions[currentQuestionIndex].options[i],
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  if (!isCorrect && selectedOption != null)
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Right Answer: ${questions[currentQuestionIndex].correctAnswer}',
                        style:
                            const TextStyle(fontSize: 20, color: Colors.green),
                      ),
                    ),
                  if (selectedOption != null)
                    ElevatedButton(
                      child: const Text('Next Question'),
                      onPressed: () {
                        nextQuestion();
                      },
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class Question {
  final String questionText;
  final List<String> options;
  final String correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}
