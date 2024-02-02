import 'package:flutter/material.dart';
import 'package:workout_app/screens/loginscreen.dart';
import 'package:workout_app/screens/signupscreen.dart';
import 'package:workout_app/screens/task.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage("assets/screen.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Task()));
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(8, 0, 0, 180),
                child: Text(
                  " Get Fit,\n Get Stronger,\n Get Healthy!!!",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 25),
                    child: Container(
                      height: 140,
                      //width: 500,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 39, 40, 39),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            //color: Colors.red,
                            child: Center(
                              child: Text(
                                "  This application can improve yourself\nto have a healthy lifestyle by exercising.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 45,
                            margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.lightGreen,
                            ),
                            child: Center(
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => login()));
                                    },
                                    child: Text(
                                      "Log In",
                                      style:
                                          TextStyle(color: Colors.lightGreen),
                                    ))
                              ],
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
        ],
      ),
    );
  }
}
