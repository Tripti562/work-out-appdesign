import 'package:flutter/material.dart';
import 'package:workout_app/screens/home_screen.dart';
import 'package:workout_app/screens/popular.dart';
import 'package:workout_app/screens/stopwatch.dart';

class lift extends StatefulWidget {
  final Popular1 user;

  const lift({
    Key? key,
    required this.user,
  }) : super(key: key);
  //const lift({super.key});

  @override
  State<lift> createState() => _liftState();
}

class _liftState extends State<lift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage("assets/image1.png"),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homescreen()));
                  
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.white.withOpacity(.2),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,0,0,0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " 1-2 Minutes of,\n Plank As Possible As,\n Wind",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(height: 500,),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 170, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "With just 1-2 minutes of continuity,\nyou canexperience the fit body.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 65, 65, 65),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.lock_clock,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "1.5 Minutes",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.run_circle_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Total-Body Strength, Core, Stability",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.bungalow_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "100 Kcal",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreen,
                  ),
                  child: Center(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => stop()));
                  
                      },
                      child: Text(
                        "Start Workout",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
