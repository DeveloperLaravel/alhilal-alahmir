import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projectimagefirb/core/doctor/data/model_doctor.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  Future<List<ModelDoctor>> getData() async {
    var url = 'https://jsonplaceholder.typicode.com/todos';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> jsonDate = jsonDecode(response.body);
      List<ModelDoctor> alldoctors = [];
      for (var element in jsonDate) {
        ModelDoctor modelDoctor = ModelDoctor.fromJson(element);
        alldoctors.add(modelDoctor);
      }
      return alldoctors;
    } else {
      throw Exception('This NOT data');
    }
    // print(jsonDate.toString());
  }

  late Future<List<ModelDoctor>> doctor;
  @override
  // @override
  // void dispose() {
  //   doctor = getData();
  //   super.dispose();
  // }
  @override
  void initState() {
    doctor = getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Doctor'), actions: [
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('add'),
      ),
      body: FutureBuilder<List<ModelDoctor>>(
        future: doctor,
        // initialData: InitialData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            // ignore: sized_box_for_whitespace
            return Container(
              width: double.infinity,
              child: Card(
                elevation: 7,
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Text(
                      'Id:${snapshot.data![index].id}\n Title : ${snapshot.data![index].title}',
                    );
                  },
                ),
              ),
            );
          }
          return Center(child: const CircularProgressIndicator());
        },
      ),
    );
  }
}
