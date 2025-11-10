import 'package:flutter/material.dart';

class HomePage8 extends StatelessWidget {
  const HomePage8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem e texto lado a lado
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagem
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                    width: 160,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                // Texto ao lado
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aqui eu Tenho uma\nPaisagem',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur '
                        'adipiscing elit, sed do eiusmod tempor '
                        'incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and '
              'typesetting industry. Lorem Ipsum has been the industry\'s '
              'standard dummy text ever since the 1500s, when an unknown '
              'printer took a galley of type and scrambled it to make a type '
              'specimen book. It has survived not only five centuries, but '
              'also the leap into electronic typesetting, remaining essentially '
              'unchanged. It was popularised in the 1960s with the release of '
              'Letraset sheets containing Lorem Ipsum passages, and more recently '
              'with desktop publishing software like Aldus PageMaker including '
              'versions of Lorem Ipsum.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
