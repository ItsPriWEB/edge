import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container (
          height: 200,
          color: Colors.blue.shade50,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.end,

            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('I am pritha'),
            ],
          ),
        ),
      ),
    );
  }
}
// Container(
// // padding: EdgeInsets.only(top:50,bottom: 10,left: 70,right: ),
// margin: EdgeInsets.all(30),
// decoration:  BoxDecoration(
// color: const Color(0xff0023fd).withOpacity(.5),
// //  image: DecorationImage(image: NetworkImage('')),
// ),
// child:Text('Sign In',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24)),
// ),