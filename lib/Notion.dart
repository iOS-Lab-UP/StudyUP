import 'package:flutter/material.dart';

class Notion extends StatelessWidget {
  const Notion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notion Screen'),
      ),
      body: const Center(
        child: Text(
          'This is the Notion screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}