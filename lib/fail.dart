import 'package:WizQUiz/main.dart';
import 'package:WizQUiz/marks.dart';
import 'package:flutter/material.dart';

class fail extends StatelessWidget {
  final int Marks;

  fail({required this.Marks}); 


  
  

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
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 165),
          child: Image.asset("images/fail.png"),
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
                " Oops, your score is $Marks",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 228, 21, 6)),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => HomePage()));
          },
          child: Container(
              width: 150,
              height: 40,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Colors.red, Colors.red],
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
                          // Marks: Marks,
                        )));
          },
          child: Container(
              width: 100,
              height: 40,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Colors.red, Colors.red],
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
                  "Records",
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
