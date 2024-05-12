import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var url= 'https://jsonplaceholder.typicode.com/posts/1/comments';

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
                    child: const Text('Page3'),
                  ), Text(data),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
