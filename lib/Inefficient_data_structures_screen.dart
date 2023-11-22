import 'package:flutter/material.dart';

class InefficientDataStructuresScreen extends StatelessWidget {
  const InefficientDataStructuresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> largeList = List.generate(10000, (index) => index);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: largeList.length,
        itemBuilder: (context, index) {
          return Text('Item ${largeList.where((item) => item == index).first}');
        },
      ),
    );
  }
}
