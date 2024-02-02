import 'package:flutter/material.dart';
import 'package:workout_app/screens/loginscreen.dart';
import 'start.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          Container(
            //color: Colors.lightGreen,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 65, 65, 65),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 18.0, 0, 0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Please login with your information.",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enter your mail address",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'abc@gmail.com',
                                    border: UnderlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.mail,
                                      color: Colors.lightGreen,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Enter your phone number",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: '98-',
                                    border: UnderlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.phone,
                                      color: Colors.lightGreen,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Enter your password",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: '*********',
                                    border: UnderlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.lightGreen,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
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
                                                builder: (context) => login()));
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(90, 0, 0, 0),
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
                                                    builder: (context) =>
                                                        login()));
                                          },
                                          child: Text(
                                            "Log In",
                                            style: TextStyle(
                                                color: Colors.lightGreen),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
