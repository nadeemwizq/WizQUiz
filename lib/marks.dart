import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class marks extends StatefulWidget {
  // final int Marks;

  // marks({required this.Marks});

  @override
  State<marks> createState() => _marksState();
}

class _marksState extends State<marks> {
  List<int> userScores = [];
  void initstate() {
    super.initState();
    getUserScores();
  }

  Future<void> getUserScores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userScoresString = prefs.getString('user_scores');
    //prefs.clear();
    if (userScoresString != null) {
      setState(() {
        userScores = userScoresString
            .split(',')
            .map((s) => int.tryParse(s) ?? 0)
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "History",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: userScores.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${userScores[index]}"),
            subtitle: Text("Play $index"),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/Q icon.png"),
            ),
            trailing: Text("1$index:00 AM"),
          );
        },
      )),
    );
  }
}
