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
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Ação do botão
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: const Text('Clique aqui'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão flutuante
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}