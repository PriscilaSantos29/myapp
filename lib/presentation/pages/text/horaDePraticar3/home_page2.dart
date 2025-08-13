import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF607D8B), // cinza-azulado
      appBar: AppBar(
        title: const Text(
          "Meu Primeiro App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Image.network(
          "https://github.com/polimorfismo/assets-curso-flutter-e-dart/blob/main/imagens/rubi.png?raw=true",
          width: 250,
        ),
      ),
    );
  }
}
