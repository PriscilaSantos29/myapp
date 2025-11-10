import 'package:flutter/material.dart';

class HomePage5 extends StatelessWidget {
  const HomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEU APP'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // 1. GridView.count cria um grid com um número fixo de colunas
        child: GridView.count(
          crossAxisCount: 2, // Duas colunas
          crossAxisSpacing: 8.0, // Espaçamento horizontal entre os itens
          mainAxisSpacing: 8.0, // Espaçamento vertical entre os itens
          children: <Widget>[
            // 2. Blocos de Ícones (Card/InkWell para clique)
            _buildMenuItem(
              color: Colors.amber, 
              icon: Icons.chair, 
              label: 'Cadeira'
            ),
            _buildMenuItem(
              color: Colors.green, 
              icon: Icons.man, 
              label: 'Homem'
            ),
            _buildMenuItem(
              color: Colors.red, 
              icon: Icons.car_crash, 
              label: 'Acidente'
            ),
            _buildMenuItem(
              color: Colors.blue, 
              icon: Icons.book, 
              label: 'Livro'
            ),
            _buildMenuItem(
              color: Colors.purple, 
              icon: Icons.settings, 
              label: 'Configurações'
            ),
            _buildMenuItem(
              color: Colors.brown, 
              icon: Icons.wifi, 
              label: 'WiFi'
            ),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para criar cada item do menu
  Widget _buildMenuItem({required Color color, required IconData icon, required String label}) {
    return Card(
      color: color,
      elevation: 4.0, // Elevação para dar um efeito 3D (sombra)
      child: InkWell( // InkWell permite detectar cliques e adiciona um efeito visual (ripple)
        onTap: () {
          // Lógica de navegação aqui (ex: Navigator.push(...))
          print('Item: $label clicado');
        },
        child: Center(
          child: Icon(
            icon,
            color: Colors.white, // Ícones brancos para contraste
            size: 60.0,
          ),
        ),
      ),
    );
  }
}
