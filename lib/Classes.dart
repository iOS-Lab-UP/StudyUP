import 'package:flutter/material.dart';

class Classes extends StatelessWidget {
  const Classes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classes Screen'),
      ),
      body: const Center(
        child: Text(
          'This is the Classes screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}