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
        children: [
          // Conteúdo principal
          Expanded(
            child: Container(
              color: Colors.blue[50],
              alignment: Alignment.center,
              child: const Text(
                "Conteúdo Principal",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),


          // Seção de botões
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ButtonSection(
                  icon: Icons.call,
                  text: "Ligar",
                ),
                ButtonSection(
                  icon: Icons.near_me,
                  text: "Rota",
                ),
                ButtonSection(
                  icon: Icons.share,
                  text: "Compartilhar",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  final IconData icon;
  final String text;


  const ButtonSection({super.key, required this.icon, required this.text});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black), // cor preta
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }
}
