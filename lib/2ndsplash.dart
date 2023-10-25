import 'package:WizQUiz/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class splashy extends StatefulWidget {
  const splashy({super.key});

  @override
  State<splashy> createState() => _splashyState();
}

class _splashyState extends State<splashy> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(milliseconds: 2700), () {
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => HomePage()));
      });
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("images/splashy 2 1698215155881.json",
                height: 600, width: 500),
          ],
        ),
      ),
    );
  }
}
