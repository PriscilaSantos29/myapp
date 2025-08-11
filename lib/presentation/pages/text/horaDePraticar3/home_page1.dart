import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEU APP',
        style: TextStyle(
            color: Colors.white, // <- força o texto branco
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      backgroundColor: const Color.fromARGB(255, 214, 228, 241),
      body: Container(
        alignment: Alignment.center,
        width: 200,
        height: 200,
        margin: const EdgeInsets.all(100),
        decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: const Text(
          'Olá',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}