import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Doctor'), actions: [
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),

            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async {
                var response = await get(
                  Uri.parse('https://jsonplaceholder.typicode.com/posts'),
                );

                var responseBody = jsonDecode(response.body);
                print(responseBody);
              },
              child: Text('Http Request'),
            ),
          ),
        ],
      ),
    );
  }
}
