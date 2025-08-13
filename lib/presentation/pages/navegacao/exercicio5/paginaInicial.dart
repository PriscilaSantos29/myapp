import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/navegacao/exercicio5/drawer.dart';

class Paginainicial extends StatelessWidget {
  const Paginainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        backgroundColor: Colors.green,
      ),
      drawer: const MenuDrawer(),
      body: const Center(
        child: Text('Estou na Página Inicial'),
      ),
    );
  }
}