import 'package:WizQUiz/marks.dart';
import 'package:WizQUiz/splash.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'general.dart';
import 'sports.dart';
import 'games.dart';
import 'films.dart';
import 'history.dart';
import 'space.dart';

// DASHBOARD

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: splash());
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int Marks = 0;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(43, 40, 0, 0),
                  width: 320,
                  height: 50,
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
                      ]),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(20, 48, 0, 0)),
                      Text(
                        "Quiz Wizard",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      GestureDetector(
                        onTap: () {
                          Marks = 0;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => marks(
                                      // Marks: Marks,
                                      )));
                        },
                        child: Container(
                          child: Image.asset("images/3dp.png"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 45, 0, 0),
                  child: const Text(
                    "Hey,",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: const Text(
                    "Choose a category",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal),
                  ),
                )
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Marks = 0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => GeneralQuiz(
                                  Marks: 0,
                                )));
                  },
                  child: Container(
                    // 1 st container
                    margin: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                    width: 180,
                    height: 150,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white, Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 5,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                            width: 150,
                            height: 100,
                            child: Lottie.asset(
                              "images/Ugeneral - 1697691683751.json",
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: const Text(
                            "General",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Marks = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => SportsQuiz()));
                  },
                  child: Container(
                    // 2nd container
                    margin: const EdgeInsets.only(top: 60, left: 10),
                    width: 180,
                    height: 150,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white, Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 5,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                            width: 100,
                            height: 120,
                            child: Lottie.asset(
                              "images/sports - 1697623994638.json",
                            )),
                        Container(
                          child: const Text(
                            "Sports",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Marks = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => (gameQuiz())));
                  },
                  child: Container(
                    // 3 rd container
                    margin: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                    width: 180,
                    height: 150,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white, Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 5,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 120,
                          child:
                              Lottie.asset("images/games-1697692043182.json"),
                        ),
                        Container(
                          child: const Text(
                            " Games",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Marks = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => (filmQuiz())));
                  },
                  child: Container(
                    // 4 th container
                    margin: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                    width: 180,
                    height: 150,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white, Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 5,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 120,
                          child:
                              Lottie.asset("images/films-1697691831052.json"),
                        ),
                        Container(
                          child: const Text(
                            "Films",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Marks = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => (historyQuiz())));
                  },
                  child: Container(
                    // 5 th container
                    margin: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                    width: 180,
                    height: 150,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 5,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                            width: 100,
                            height: 120,
                            child: Lottie.asset(
                                "images/hhistory 1697625946052.json")),
                        Container(
                          child: const Text(
                            "History",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Marks = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => (spaceQuiz())));
                  },
                  child: Container(
                    // 6 th container
                    margin: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                    width: 180,
                    height: 150,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.white,
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 5,
                          offset: Offset(0, 4),
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          child:
                              Lottie.asset("images/rckts-1697692175041.json"),
                        ),
                        Container(
                          child: const Text(
                            "Space",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
