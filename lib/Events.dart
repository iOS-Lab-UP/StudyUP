import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events Screen'),
      ),
      body: const Center(
        child: Text(
          'This is the Events screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}