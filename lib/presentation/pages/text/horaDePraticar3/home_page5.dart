import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MEU APP"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Imagem de fundo
          Image.network(
            'https://i.imgur.com/fzgwYzq.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),


          // Conteúdo sobre a imagem
          Positioned(
            top: 16, // Espaçamento exato abaixo da AppBar
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // ação do botão
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[200],
                  foregroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: const Text("Clique para Prosseguir"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
