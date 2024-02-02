import 'package:flutter/material.dart';
import 'package:workout_app/screens/signupscreen.dart';
import 'package:workout_app/screens/start.dart';

import 'home_screen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  late String username;
  late String Password;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextFormField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.lightGreen,
      decoration: InputDecoration(
        labelText: "Username",
        border: UnderlineInputBorder(),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.lightGreen,
        ),
      ),
    );
    final passwordField = TextFormField(
      onChanged: (val) {
        setState(() {
          Password = val;
        });
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Password",
        border: UnderlineInputBorder(),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.lightGreen,
        ),
      ),
    );
    final myLoginbutton = MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(18),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
      color: Colors.lightGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      onPressed: () {
        if (username == "Tripti" && Password == "admin123") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => homescreen()));
        
        } else {
          print("Login Failed");
        }
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image(
                image: AssetImage("assets/screen.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        height: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 65, 65, 65),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 45, 20, 20),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Login Details", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16),),
                              usernameField,
                              SizedBox(height: 18),
                              passwordField,
                              SizedBox(height: 18),
                              myLoginbutton,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //next section
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.lightGreen),
                          ))
                    ],
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
