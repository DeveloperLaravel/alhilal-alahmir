import 'package:flutter/material.dart';

class LoginLista extends StatefulWidget {
  const LoginLista({super.key});

  @override
  State<LoginLista> createState() => _LoginListaState();
}

class _LoginListaState extends State<LoginLista> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('login lista')));
  }
}
