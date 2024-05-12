import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  var url= 'https://jsonplaceholder.typicode.com/posts/1';

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
                    child: const Text('Page2'),
                  ), Text(data),
                ],
              ),
            ),
          ),
        ),

    );
  }
}
