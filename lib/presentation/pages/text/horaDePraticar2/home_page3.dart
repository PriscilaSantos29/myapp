import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEU APP',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )
      ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Adicionar Informações'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.teal, width: 1.5),
            ),
            elevation: 4,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
      ),
    );
  }
}