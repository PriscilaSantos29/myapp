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
          Expanded(
            child: Container(
              color: Colors.cyan,
              alignment: Alignment.center,
              child: const Text("Expandido"),
            ),
          ),
          Container(
            height: 100,
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: const Text("100"),
          ),
          Container(
            height: 200,
            color: Colors.indigo,
            alignment: Alignment.center,
            child: const Text("200"),
          ),
        ],
      ),
    );
  }
}
