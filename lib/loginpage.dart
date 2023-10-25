import 'package:WizQUiz/2ndsplash.dart';
import 'package:WizQUiz/components/logos.dart';
import 'package:WizQUiz/components/signbutton.dart';
import 'package:WizQUiz/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class login extends StatelessWidget {
  login({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 50,
              // ),
              Lottie.asset("images/welcome-1697708438401.json",
                  height: 250, width: 300),
              // SizedBox(
              //   height: 50,
              // ),
              Text(
                "Welcome!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              SizedBox(height: 25),
              textfield(
                controller: usernamecontroller,
                hinttext: "Username",
                obsecure: false,
              ),
              SizedBox(height: 10),
              textfield(
                controller: passwordcontroller,
                hinttext: "Password",
                obsecure: true,
              ),
              SizedBox(height: 20),
              Text(
                "Forget password?",
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(height: 30),
              sign(
                onTap: () {
                  // if (passwordcontroller.text == "123" &&
                  //     usernamecontroller.text == "quiz") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => splashy()));
                  // } else
                  //   (showDialog(
                  //       context: context,
                  //       builder: (context) => AlertDialog(
                  //             actions: [
                  //               TextButton(
                  //                 onPressed: () {
                  //                   Navigator.of(context).pop();
                  //                 },
                  //                 child: Text("close"),
                  //               )
                  //             ],
                  //             title: Text(
                  //               "Mis match",
                  //               style: TextStyle(color: Colors.red),
                  //             ),
                  //             content: Text(
                  //                 "you may enterd wrong password or user ID"),
                  //           )));
                },
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logos(imagepath: "images/google-png.png"),
                  SizedBox(width: 18),
                  logos(imagepath: "images/apple-png.png"),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
