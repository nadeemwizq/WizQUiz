import 'package:WizQUiz/main.dart';
import 'package:WizQUiz/marks.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class pass extends StatefulWidget {
  final int Marks;
  pass({required this.Marks});

  @override
  State<pass> createState() => _passState();
}

class _passState extends State<pass> {
  List<int> userScores = [];

  // void initstate() {
  //   super.initState();
  //   saveQuizResult();
  // }

  Future<void> saveQuizResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userScoresString = prefs.getString('user_scores');

    if (userScoresString != null) {
      userScores =
          userScoresString.split(',').map((s) => int.tryParse(s) ?? 0).toList();
    }
    userScores.add(widget.Marks);

    prefs.setString('user_scores', userScores.join(','));
  }

  //this page will lead into pass if the player got more than 3 or 3
  @override
  Widget build(BuildContext context) {
    saveQuizResult();
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
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 165),
          child: Image.asset("images/pass.png"),
        ),
        Container(
          width: 300,
          height: 80,
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
          child: Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              " victory, your score is ${widget.Marks}",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 86, 238, 91)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => HomePage()));
            print('$userScores');
          },
          child: Container(
              width: 150,
              height: 40,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.green, Colors.green],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
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
              child: Container(
                margin: EdgeInsets.only(top: 13),
                child: Text(
                  "back to Main",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => marks(
                        // Marks: widget.Marks,
                        )));
          },
          child: Container(
              width: 100,
              height: 40,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.green, Colors.green],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
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
              child: Container(
                margin: EdgeInsets.only(top: 13),
                child: Text(
                  "records",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              )),
        )
      ]),
    ));
  }
}
