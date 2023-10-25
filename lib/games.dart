import 'package:flutter/material.dart';
import 'pass.dart';
import 'fail.dart';
class gameQuiz extends StatefulWidget {
  @override
  _SportsQuizState createState() => _SportsQuizState();
}

class _SportsQuizState extends State<gameQuiz> {
  int Marks = 0;  
  List<Question> questions = [
    Question(
      'Which engine is used by rockstar?',
      ['RAGE', 'Unity', 'Cry engine 3', 'Unreal engine'],
      'RAGE',
    ),
    Question(
      'Which is the most sold game?',
      ['Minecraft', 'GTA', 'Walking dead', 'NFS most wanted'],
      'Minecraft',
    ),
    Question(
      'Which game has heighest download?',
      ['PUBG', 'clash of clans', 'Subway surf', 'Call of Duty'],
      'Subway Surf',
    ),
    Question(
      'Which mobile game has most active players?',
      ['PUBG', 'Free Fire', 'Candy Crush', 'Mini miltia'],
      'Free Fire',
    ),
    Question(
      'How old is Super Mario?',
      ['67 years', '42 years', '50 years', '80 years'],
      '42 years',
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
          content: Text(
              'You have completed the Games quiz!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                if (Marks > 3) {
                  // Navigate to the pass page
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => pass(Marks: Marks)));
                } else {
                  // Navigate to the fail page
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => fail(Marks: Marks)));
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
        title: Text('Games Quiz'),
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
            //           colors: [Colors.white, Colors.white, Colors.white],
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
            //       child: Row(
            //         children: [
            //           const Padding(padding: EdgeInsets.fromLTRB(20, 48, 0, 0)),
            //           const Text(
            //             "Quiz Wizard",
            //             style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w600),
            //           ),
            //           const SizedBox(
            //             width: 142,
            //           ),
            //           Image.asset("images/3dp.png"),
            //         ],
            //       ),
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
                    "Let's start Games Quiz",
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
                    margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                    child: Text(
                      'Question ${currentQuestionIndex + 1}/${questions.length}',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
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
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  if (!isCorrect && selectedOption != null)
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Right Answer: ${questions[currentQuestionIndex].correctAnswer}',
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                    ),
                  if (selectedOption != null)
                    ElevatedButton(
                      onPressed: () {
                        nextQuestion();
                      },
                      child: Container(child: Text('Next Question')),
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
