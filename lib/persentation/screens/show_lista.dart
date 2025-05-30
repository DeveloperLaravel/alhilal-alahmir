import 'package:flutter/material.dart';

class ShowLista extends StatefulWidget {
  const ShowLista({super.key});

  @override
  State<ShowLista> createState() => _ShowListaState();
}

class _ShowListaState extends State<ShowLista> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('show list')));
  }
}
