import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:workout_app/screens/home_screen.dart';
import 'package:workout_app/screens/lifting.dart';

class stop extends StatefulWidget {
  const stop({super.key});

  @override
  State<stop> createState() => _stopState();
}

class _stopState extends State<stop> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  final isHours = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _stopWatchTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
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
          
          //SizedBox(height: 50,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
                StreamBuilder<int>(
                  stream: _stopWatchTimer.rawTime,
                  initialData: _stopWatchTimer.rawTime.value,
                  builder: (context, snapshot) {
                    final value = snapshot.data;
                    final displayTime =
                        StopWatchTimer.getDisplayTime(value!, hours: isHours);

                    return Text(
                      displayTime,
                      style:
                          TextStyle(color:Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                    );
                  },
                ),
                
                SizedBox(
                  height: 20,
                ),
                
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        //color: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.lightGreen,
                            width: 2,
                          ),
                        ),
                        onPressed: () {
                          _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "Stop",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        //color: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.redAccent,
                            width: 2,
                          ),
                        ),
                        onPressed: () {
                          _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  //color: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  onPressed: () {
                    _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 45,
                      margin: EdgeInsets.fromLTRB(50, 100, 50, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightGreen,
                      ),
                      child: Center(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homescreen()));
                          },
                          child: Text(
                            "Cancel",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
