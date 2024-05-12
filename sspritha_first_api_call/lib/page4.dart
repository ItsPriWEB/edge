import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  var url= 'https://jsonplaceholder.typicode.com/comments?postId=1';

  var data='No Data';
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(onPressed: () async {
                  print('Button Pressed');
                  http.Response response = await http.get(Uri.parse(url));
                  print(response);
                  setState(() {
                    data=response.body;
                  });

                  // data=response.body;
                  // var statusCode= response.statusCode;
                  //   print(data);
                  // print(statusCode);
                },
                  child: const Text('Page4'),
                ), Text(data),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
