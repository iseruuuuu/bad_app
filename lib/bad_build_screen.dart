import 'dart:async';

import 'package:flutter/material.dart';

class BadBuildScreen extends StatefulWidget {
  const BadBuildScreen({super.key});

  @override
  BadBuildScreenState createState() => BadBuildScreenState();
}

class BadBuildScreenState extends State<BadBuildScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _updateCounter());
  }

  void _updateCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Counter: $_counter'),
      ),
    );
  }
}
