import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var url= 'https://jsonplaceholder.typicode.com/posts';

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
                    child: const Text('Page1'),
                  ), Text(data),

                ],
              ),
            ),
          ),
        ),
      );

  }
}
