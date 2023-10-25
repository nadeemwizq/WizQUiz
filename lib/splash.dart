import 'package:WizQUiz/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}
// the introduction page

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => login()));
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
        body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.white, Colors.white],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset("images/Q icon.png"),
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: Text("14 Corporation"),
          ),
          Container(
            width: 22,
            height: 22,
            child: Image.asset("images/cr.png"),
          )
        ],
      ),
    ));
  }
}
