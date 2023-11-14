import 'package:flutter/material.dart';

class Exams extends StatelessWidget {
  const Exams({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exams Screen'),
      ),
      body: const Center(
        child: Text(
          'This is the Exams screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}