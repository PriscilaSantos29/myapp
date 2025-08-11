import 'package:flutter/material.dart';

class SegundaPag extends StatelessWidget {
  const SegundaPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: const Text(
          "SEGUNDA PÁGINA",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text(
            'Retornar Para Primeira Página',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context); //volta para a rota anterior
          },
        ),
      ),
    );
  }
}