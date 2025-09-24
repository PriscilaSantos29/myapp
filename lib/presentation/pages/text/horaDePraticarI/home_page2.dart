import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MEU APP",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Fundo da tela com a imagem
          Positioned.fill(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/0/04/Lights_of_Rockefeller_Center_during_sunset.jpg",
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text("Erro ao carregar imagem"));
              },
            ),
          ),

          // Card branco sobre a imagem (como no print)
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: const EdgeInsets.all(16),
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "New York",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Nova York, conhecida como 'A Cidade que Nunca Dorme', "
                        "é um dos destinos mais vibrantes e icônicos do mundo. "
                        "Com seus arranha-céus impressionantes, como o Empire State Building, "
                        "e pontos turísticos famosos, como a Times Square e a Estátua da Liberdade, "
                        "a cidade oferece uma experiência única para moradores e visitantes.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
