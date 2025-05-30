import 'package:flutter/material.dart';

class SetteingsPage extends StatefulWidget {
  const SetteingsPage({super.key});

  @override
  State<SetteingsPage> createState() => _SetteingsPageState();
}

class _SetteingsPageState extends State<SetteingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('settings')));
  }
}
