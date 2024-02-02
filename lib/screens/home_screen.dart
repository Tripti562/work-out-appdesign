import 'package:flutter/material.dart';
import 'package:workout_app/screens/lifting.dart';
import 'package:workout_app/screens/popular.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final List category1 = [
    Popular1(imagUrl: "assets/emily.png", name: "Yoga exercises"),
    Popular1(imagUrl: "assets/sule.png", name: "Lifting"),
    Popular1(imagUrl: "assets/alexsandra.png", name: "Weight Lifting"),
  ];
  late FocusNode focusNode;
  int _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode = FocusNode();
  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "HEY,",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "TRIPTI...",
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: CircleAvatar(
                        radius:
                            16.0, // Adjust the radius to control the size of the avatar
                        backgroundImage: AssetImage(
                            'assets/login.jpg'), // Replace with your image path
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Find",
                          style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          " your workout!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_circle_right,
                          size: 30,
                          color: Colors.lightGreen,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 20, 15),
                child: TextField(
                  //focusNode: focusNode,
                  cursorColor: Colors.lightGreen,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    fillColor: Colors.grey,
                    filled: true,
                    //focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIconColor: MaterialStateColor.resolveWith((states) {
                      if (states.contains(MaterialState.focused)) {
                        return Colors.lightGreen;
                      }
        
                      return Colors.white24;
                    }),
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintText: "Search",
                    //border: InputBorder.none,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 8, 0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "Popular",
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
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "Upper Body",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.lightGreen,
                            width: 2,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "Lower Body",
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
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          "Core Body",
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
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, .0),
                    child: Stack(
                      //clipBehavior: Clip.antiAlias,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 110,
                          //color: Colors.amber,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 5,
                            width: 128,
                            color: Colors.lightGreen,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          height: 35,
                          child: Text(
                            "Popular:",
                            style: TextStyle(
                                color: Colors.white,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w700,
                                fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      width: 520,
                      height: 200,
                      //color: Colors.amber,
                      child: ListView.builder(
                        itemCount: category1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          final catego = category1[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => lift(
                                          user: catego,
                                        )));
                              },
                              child: Column(
                                
                                children: [
                                  Container(
                                    height: 180,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage(category1[index].imagUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    category1[index].name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color.fromARGB(255, 22, 32, 54),
      //   items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.search),
      //     label: 'Search',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.person_outlined),
      //     label: 'Profile',
          
      //   ),
      // ],
      // currentIndex: _selectedIndex,
      // selectedItemColor: Colors.green,
      // onTap: _onItemTapped,
      // ),
    );
  }
}
