import 'package:flutter/material.dart';

class HuskyPage extends StatelessWidget {
  const HuskyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "MEU APP",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/husky.jpg",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 12),
                // Texto ao lado da imagem
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Husky Siberiano",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "O Husky Siberiano é uma raça de cão de porte médio conhecida "
                        "por sua resistência, energia e beleza cativante. Originário da Sibéria, "
                        "ele possui uma pelagem densa que o protege em climas frios e olhos penetrantes, "
                        "muitas vezes de cores diferentes.",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Ícones corretos alinhados
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.info, color: Colors.blue, size: 28),
                Icon(Icons.lightbulb_outline, color: Colors.orange, size: 28),
                Icon(Icons.help_outline, color: Colors.green, size: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
