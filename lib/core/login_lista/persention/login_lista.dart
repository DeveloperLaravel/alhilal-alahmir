import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class LoginLista extends StatefulWidget {
  const LoginLista({super.key});

  @override
  State<LoginLista> createState() => _LoginListaState();
}

class _LoginListaState extends State<LoginLista> {
  final dio = Dio();
  void getDataDio() async {
    final response = await dio.get(
      'https://jsonplaceholder.typicode.com/posts',
    );
    print(response.data.runtimeType);
  }

  void getDataHttp() async {
    final respons = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    final a = jsonDecode(respons.body); // 1
    print(a.runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: getDataDio,
              child: Text('data Dio'),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: getDataHttp,
              child: Text('data Http'),
            ),
          ],
        ),
      ),
      body: Center(child: Text('login lista')),
    );
  }
}
