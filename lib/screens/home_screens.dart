import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica Facebook'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('chanchito feliz'),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
