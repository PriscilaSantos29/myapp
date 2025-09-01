import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MEU APP"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(color: Colors.red)),
          const SizedBox(height: 8), // espaçamento
          Expanded(child: Container(color: Colors.blue)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.green)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.yellow)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.pink)),
          const SizedBox(height: 8),
          Expanded(child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}
