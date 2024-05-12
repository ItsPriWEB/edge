import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sspritha_first_api_call/page1.dart';
import 'package:sspritha_first_api_call/page2.dart';
import 'package:sspritha_first_api_call/page3.dart';
import 'package:sspritha_first_api_call/page4.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 PageController _controller=PageController(

 );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text("First Api Call"),
            centerTitle: true,
          ),
          body: PageView(
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),
        ),
      ),
    );
  }
}



