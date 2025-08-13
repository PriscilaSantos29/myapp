import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/navegacao/exercicio5/drawer.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
        backgroundColor: Colors.green,
      ),
      drawer: const MenuDrawer(),
      body: const Center(
        child: Text('Estou na Página de Contato'),
      ),
    );
  }
}