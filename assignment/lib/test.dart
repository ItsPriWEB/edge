import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: const Text("Assignment"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        leading:const Icon(Icons.message) ,
        leadingWidth:50,


      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[const Text("Container"),
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  margin: const EdgeInsets.only(bottom: 50),
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2,
                  decoration:const BoxDecoration( border:
                  Border.symmetric(horizontal: BorderSide(width: 20,color: Colors.black),
                      vertical: BorderSide(width: 20,color: Colors.transparent  )
                  ),

                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
