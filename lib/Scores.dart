import 'package:flutter/material.dart';

class Scores extends StatelessWidget {
  const Scores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scores Screen'),
      ),
      body: const Center(
        child: Text(
          'This is the Scores screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}