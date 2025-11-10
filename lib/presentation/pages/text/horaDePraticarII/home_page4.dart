import 'package:flutter/material.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              // ação ao clicar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Selecionado: $value')),
              );
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 'config',
                child: Row(
                  children: [
                    Icon(Icons.settings, color: Colors.black54),
                    SizedBox(width: 10),
                    Text('Configurações'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'compartilhar',
                child: Row(
                  children: [
                    Icon(Icons.share, color: Colors.black54),
                    SizedBox(width: 10),
                    Text('Compartilhar'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'sair',
                child: Row(
                  children: [
                    Icon(Icons.exit_to_app, color: Colors.black54),
                    SizedBox(width: 10),
                    Text('Sair'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'OLÁ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
